// dependencies
import * as fs from 'fs'
import * as path from 'path'
const maxmsp = require('max-api')

// globals
let SPL_current: SPL = [] // the results of an SPL test, organised according to ((hz, db))
let peaks: SPL = [] // subset of freqs and sweeps ((hz, db))

maxmsp.addHandler(
	'importSweep',
	(frequency: Readonly<number>, amplitude: Readonly<number>): void => {
		/*
		Load the Javascript API with the results of an SPL test, one frequency and amplitude pair at a time.
		The Javascript API is reset when a new value for 20hz is received.
		*/

		if (frequency === 20) {
			SPL_current = []
		}
		SPL_current.push({ frequency, amplitude })
	},
)

maxmsp.addHandler('analyseSweep', (threshold: Readonly<number> = -40): void => {
	/*
	Detect the dominant modes in an SPL test using the ___ algorithm.
		See: <link.to.Julius.Caesar.Smith.III>
	params:
		threshold	minimum peak amplitude (db)
	*/

	const prev_amp = -200.0
	SPL_current.forEach((entry: Readonly<SPL[0]>, i: Readonly<number>) => {
		if (i !== SPL_current.length - 1) {
			// typescript doesn't like complex for loops...
			const next_amp = (SPL_current[i + 1] as NonNullable<SPL[0]>).amplitude
			// logic
			if (
				entry.amplitude > prev_amp &&
				entry.amplitude > next_amp &&
				(threshold === 0 || entry.amplitude > threshold)
			) {
				peaks.push(entry)
			}
		}
	})
	// sort peaks by amplitude
	peaks.sort((a, b) => b.amplitude - a.amplitude)
	maxmsp.outletBang()
})

maxmsp.addHandler('getMode', (...N: Readonly<number[]>): void => {
	/*
	Get the nth most dominant mode of a precomputed SPL.
	*/

	maxmsp.outlet(
		N.map((n: Readonly<number>): [number, number] => {
			if (n >= peaks.length && n < 0) {
				maxmsp.post(`Mode number ${n} out of range.`)
			}
			return [peaks[n]?.frequency || 0, peaks[n]?.amplitude || 0]
		}).flat(),
	)
})

maxmsp.addHandler('exportJSON', (absolute_path: Readonly<string>): void => {
	/*
	Export the current SPL as a JSON file.
	*/

	fs.writeFileSync(
		`${absolute_path}${path.extname(absolute_path) !== '.json' ? '.json' : ''}`,
		JSON.stringify(SPL_current),
	)
	maxmsp.outletBang()
})

maxmsp.addHandler('importJSON', (absolute_path: Readonly<string>): void => {
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
