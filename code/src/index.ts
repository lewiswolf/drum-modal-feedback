// dependencies
import * as fs from 'fs'
import * as path from 'path'
const maxmsp = require('max-api')

// globals
let SPL_current: SPL = [] // the results of an SPL test, organised according to ((hz, db))
let peaks: SPL = [] // subset of freqs and sweeps ((hz, db))
let peaks_subset: SPL = [] // a second subset for applying frequency range limiting

//	//	//	//	//	//
// PUBLIC METHODS 	//
//	//	//	//	//	//

maxmsp.addHandler('getMode', (...N: Readonly<number[]>): void => {
	/*
	Get the nth most dominant mode of a precomputed SPL.
	*/

	const getN = (P: Readonly<SPL>): number[] => {
		return N.map((n: Readonly<number>): [number, number] => {
			if (n >= P.length || n < 0) {
				maxmsp.post(`Mode number ${n} out of range.`)
			}
			return [P[n]?.frequency || 0, P[n]?.amplitude || 0]
		}).flat()
	}
	// to save memory, we declare the function prior and call it using
	// peaks_subset if it is populated, or peaks if it is not.
	maxmsp.outlet(getN(peaks_subset.length > 0 ? peaks_subset : peaks))
})

maxmsp.addHandler('setRange', (f_min: Readonly<number> = 0, f_max: Readonly<number> = Infinity): void => {
	/*
	Create a subset of dominant modes for use when calling getMode.
	params:
		f_min	minimum frequency in range (hz)
		f_max	maximum frequency in range (hz)
	*/

	peaks_subset = []
	if (
		f_min > 20 ||
		f_max < Math.max(...SPL_current.map((entry: Readonly<SPL[0]>): number => entry.frequency))
	) {
		peaks.forEach((entry: SPL[0]): void => {
			if (entry.frequency >= f_min && entry.frequency <= f_max) {
				peaks_subset.push(entry)
			}
		})
	}
})

//	//	//	//	//	//
// PRIVATE METHODS 	//
//	//	//	//	//	//

maxmsp.addHandler('__analyseSweep', (threshold: Readonly<number> = -40): void => {
	/*
	Detect the dominant modes in an SPL test using the ___ algorithm.
		See: <link.to.Julius.Caesar.Smith.III>
	params:
		threshold	minimum peak amplitude (db)
	*/

	let prev_amp = -Infinity
	let prev_freq = 0.0
	peaks = []
	peaks_subset = []

	// TODO: will this always assign the first entry as a peak? Should we instead
	// start at i = 1?
	// https://github.com/lewiswolf/drum-modal-feedback/issues/11
	SPL_current.forEach((entry: Readonly<SPL[0]>, i: Readonly<number>) => {
		if (i !== SPL_current.length - 1) {
			// typescript doesn't like complex for loops...
			const next_amp = (SPL_current[i + 1] as NonNullable<SPL[0]>).amplitude
			const next_freq = (SPL_current[i + 1] as NonNullable<SPL[0]>).frequency
			// logic
			if (
				entry.amplitude > prev_amp &&
				entry.amplitude > next_amp &&
				(threshold === 0 || entry.amplitude > threshold)
			) {
				// Perform parabolic interpolation to better approximate the peak
				// First calculate the frequency bin of the peak (-1.0 to 1.0)
				// https://ccrma.stanford.edu/~jos/sasp/Peak_Detection_Steps_3.html
				let freq = 0.5 * (prev_amp - next_amp)
				freq = freq / (prev_amp - 2.0 * entry.amplitude + next_amp)

				// Perform inerpolation of the amplitude
				let amp = entry.amplitude - 0.25 * (prev_amp - next_amp) * freq

				// Now convert the frequency bin to a frequency in hz
				freq = entry.frequency + 0.5 * freq * (next_freq - prev_freq)

				// Push the interpolated peak to the peaks array
				peaks.push({ frequency: freq, amplitude: amp })
			}
			prev_amp = entry.amplitude
			prev_freq = entry.frequency
		}
	})

	// sort peaks by amplitude
	peaks.sort((a, b) => b.amplitude - a.amplitude)
	maxmsp.outletBang()
})

maxmsp.addHandler('__exportJSON', (absolute_path: Readonly<string>): void => {
	/*
	Export the current SPL as a JSON file.
	*/

	fs.writeFileSync(
		`${absolute_path}${path.extname(absolute_path) !== '.json' ? '.json' : ''}`,
		JSON.stringify(SPL_current),
	)
	maxmsp.outletBang()
})

maxmsp.addHandler('__importJSON', (absolute_path: Readonly<string>): void => {
	/*
	Import an SPL from a JSON file.
	*/

	fs.readFile(absolute_path, (err, data) => {
		if (!err) {
			SPL_current = JSON.parse(data.toString())
			maxmsp.outletBang()
		} else {
			maxmsp.post('JSON could not be imported.')
		}
	})
})

maxmsp.addHandler('__importSweep', (frequency: Readonly<number>, amplitude: Readonly<number>): void => {
	/*
	Load the Javascript API with the results of an SPL test, one frequency and amplitude pair at a time.
	The Javascript API is reset when a new value for 20hz is received.
	*/

	if (frequency === 20) {
		SPL_current = []
	}
	SPL_current.push({ frequency, amplitude })
})
