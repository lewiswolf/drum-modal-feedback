import * as fs from 'fs'
const maxmsp = require('max-api')

type HZAmp = { frequency: number; amplitude: number }

let SPL_sweep: HZAmp[] = [] // the results of an SPL test, organised according to ((hz, amplitudes))
let peaks: [number, number][] = [] // subset of freqs and sweeps ((hz, amplitudes))

maxmsp.addHandler('importSweep', (frequency: number, amplitude: number): void => {
	/*
	Load the Javascript API with the results of an SPL test, one frequency and amplitude pair at a time.
	The Javascript API is reset when a new value for 20hz is received.
	*/

	if (frequency === 20) {
		SPL_sweep = []
	}
	SPL_sweep.push({ frequency, amplitude })
})

maxmsp.addHandler('analyseSweep', (threshold: number = -40): void => {
	/*
	...
	*/

	let prev_amp = -200.0
	for (let i = 0; i < SPL_sweep.length - 1; i++) {
		const amp: number = (SPL_sweep[i] as NonNullable<HZAmp>).amplitude
		const hz: number = (SPL_sweep[i] as NonNullable<HZAmp>).frequency
		const next_amp = (SPL_sweep[i + 1] as NonNullable<HZAmp>).amplitude
		if (amp > prev_amp && amp > next_amp && (threshold === 0 || amp > threshold)) {
			// maxmsp.post('you did it')
			peaks.push([hz, amp])
		}
	}

	// 	// TODO: Set min freq difference for modes

	peaks.sort((a, b) => b[1] - a[1])
	maxmsp.outletBang()
})

maxmsp.addHandler('getMode', (n: number): void => {
	/*
	Get the nth largest mode of a precomputed
	*/

	n < peaks.length ? maxmsp.outlet(peaks[n]) : maxmsp.post('Mode number out of range.')
})

maxmsp.addHandler('exportJSON', (absolute_path: string): void => {
	fs.writeFileSync(absolute_path, JSON.stringify(SPL_sweep))
	maxmsp.outletBang()
})
