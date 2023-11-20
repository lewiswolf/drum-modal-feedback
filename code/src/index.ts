import * as fs from 'fs'
const maxmsp = require('max-api')

let SPL_current: SPL = [] // the results of an SPL test, organised according to ((hz, amplitudes))
let peaks: [number, number][] = [] // subset of freqs and sweeps ((hz, amplitudes))

maxmsp.addHandler('importSweep', (frequency: number, amplitude: number): void => {
	/*
	Load the Javascript API with the results of an SPL test, one frequency and amplitude pair at a time.
	The Javascript API is reset when a new value for 20hz is received.
	*/

	if (frequency === 20) {
		SPL_current = []
	}
	SPL_current.push({ frequency, amplitude })
})

maxmsp.addHandler('analyseSweep', (threshold: number = -40): void => {
	/*
	...
	*/

	let prev_amp = -200.0
	// typescript doesn't like complex for loops...
	for (let i = 0; i < SPL_current.length - 1; i++) {
		const amp = (SPL_current[i] as NonNullable<SPL[0]>).amplitude
		const hz = (SPL_current[i] as NonNullable<SPL[0]>).frequency
		const next_amp = (SPL_current[i + 1] as NonNullable<SPL[0]>).amplitude
		// logic
		if (amp > prev_amp && amp > next_amp && (threshold === 0 || amp > threshold)) {
			peaks.push([hz, amp])
		}
	}
	// sort peaks by amplitude
	peaks.sort((a, b) => b[1] - a[1])
	maxmsp.outletBang()
})

maxmsp.addHandler('getMode', (n: number): void => {
	/*
	Get the nth largest mode of a precomputed SPL.
	*/

	n < peaks.length && n >= 0 ? maxmsp.outlet(peaks[n]) : maxmsp.post('Mode number out of range.')
})

maxmsp.addHandler('exportJSON', (absolute_path: string): void => {
	/*
	Export the current SPL as a JSON file.
	*/

	fs.writeFileSync(absolute_path, JSON.stringify(SPL_current))
	maxmsp.outletBang()
})

maxmsp.addHandler('importJSON', (absolute_path: string): void => {
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
