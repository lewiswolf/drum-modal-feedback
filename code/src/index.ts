// dependencies
import fs from 'node:fs'
import path from 'node:path'
import { default as maxmsp } from 'max-api'

// globals
let SPL_current: SPL = [] // the results of an SPL test, organised according to ((hz, db))
let peaks: SPL = [] // subset of freqs and sweeps ((hz, db))
let peaks_subset: SPL = [] // a second subset for applying frequency range limiting

//	//	//	//	//	//
// PUBLIC METHODS 	//
//	//	//	//	//	//

maxmsp.addHandler('getMode', (...N: readonly number[]): void => {
	/*
	Get the nth most dominant mode of a precomputed SPL.
	*/

	if (N.length > 64) {
		void maxmsp.post('Only 64 modes can be queried at once.')
	} else {
		const getN = (P: Readonly<SPL>): number[] => {
			return N.map((n: Readonly<number>): [number, number] => {
				if (n >= P.length || n < 0) {
					void maxmsp.post(`Mode number ${n.toString()} out of range.`)
				}
				return [P[n]?.frequency ?? 0, P[n]?.amplitude ?? 0]
			}).flat()
		}
		// to save memory, we declare the function prior and call it using
		// peaks_subset if it is populated, or peaks if it is not.
		void maxmsp.outlet(getN(peaks_subset.length > 0 ? peaks_subset : peaks))
	}
})

maxmsp.addHandler('setCluster', (threshold = 0): void => {
	/*
	Sets the minimum distance in cents between modes. This algorithm uses a greedy search to find the
	loudest modes, and then discards those that are within the specified frequency range.
	params:
		threshold	minimum distance between modes (cents)
	*/

	const clusterLogic = (S1: Readonly<SPL>, S2: SPL): void => {
		threshold /= 1200
		S1.forEach((entry: Readonly<SPL[0]>) => {
			// S2 is mutated __in place__
			if (
				S2.every((entry_subset: Readonly<SPL[0]>): boolean => {
					return Math.abs(Math.log2(entry.frequency / entry_subset.frequency)) > threshold
				})
			) {
				S2.push(entry)
			}
		})
	}
	if (threshold !== 0) {
		if (peaks_subset.length === 0) {
			clusterLogic(peaks, peaks_subset)
		} else {
			// This section of the routine assumes that setRange was just called.
			// Successive calls without first calling setRange again will continually
			// iterate over the previously defined subset and produce undesired results.
			const new_subset: SPL = []
			clusterLogic(peaks_subset, new_subset)
			peaks_subset = new_subset
		}
	}
})

maxmsp.addHandler('setRange', (f_min: Readonly<number> = 0, f_max: Readonly<number> = Infinity): void => {
	/*
	Create a subset of dominant modes for use when calling getMode.
	params:
		f_min	minimum frequency in range (Hz)
		f_max	maximum frequency in range (Hz)
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
		See: https://ccrma.stanford.edu/~jos/sasp/Peak_Detection_Steps_3.html
	params:
		threshold	minimum peak amplitude (dB)
	*/

	peaks = []
	peaks_subset = []
	SPL_current.forEach((entry: Readonly<SPL[0]>, i: Readonly<number>) => {
		if (i > 0 && i < SPL_current.length - 1) {
			// typescript doesn't like complex for loops...
			const prev_entry = SPL_current[i - 1] as NonNullable<SPL[0]>
			const next_entry = SPL_current[i + 1] as NonNullable<SPL[0]>
			// logic
			if (
				entry.amplitude > prev_entry.amplitude &&
				entry.amplitude > next_entry.amplitude &&
				(threshold === 0 || entry.amplitude > threshold)
			) {
				// Perform parabolic interpolation to better approximate the peak
				// First calculate the frequency bin of the peak (-1.0 to 1.0)
				const bin =
					(0.5 * (prev_entry.amplitude - next_entry.amplitude)) /
					(prev_entry.amplitude - 2.0 * entry.amplitude + next_entry.amplitude)
				peaks.push({
					// Convert the frequency bin to a frequency in hz
					frequency: entry.frequency + 0.5 * (next_entry.frequency - prev_entry.frequency) * bin,
					// Perform interpolation of the amplitude
					amplitude: entry.amplitude - 0.25 * (prev_entry.amplitude - next_entry.amplitude) * bin,
				})
			}
		}
	})
	// sort peaks by amplitude
	peaks.sort((a, b) => b.amplitude - a.amplitude)
	void maxmsp.outletBang()
})

maxmsp.addHandler('__exportJSON', (absolute_path: Readonly<string>): void => {
	/*
	Export the current SPL as a JSON file.
	*/

	fs.writeFileSync(
		`${absolute_path}${path.extname(absolute_path) !== '.json' ? '.json' : ''}`,
		JSON.stringify(SPL_current),
	)
	void maxmsp.outletBang()
})

maxmsp.addHandler('__importJSON', (absolute_path: Readonly<string>): void => {
	/*
	Safely import an SPL from a JSON file.
	*/

	try {
		const json = JSON.parse(fs.readFileSync(absolute_path, 'utf-8').toString()) as SPL
		if (
			!(json instanceof Array) ||
			json.every(
				(entry: { amplitude: number | undefined; frequency: number | undefined } | undefined) =>
					!(entry?.amplitude && entry.frequency),
			)
		) {
			throw new Error('Parsed JSON does not match expected format.')
		}
		SPL_current = json
		void maxmsp.outletBang()
	} catch (err) {
		if (err instanceof Error) {
			void maxmsp.post(`JSON could not be imported: ${err.message}`)
		}
	}
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
