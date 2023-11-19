const maxmsp = require('max-api')

let SPL_sweep: [number, number][] = [] // the results of an SPL test, organised according to ((hz, amplitudes))
// let peaks: [number, number][] = [] // subset of freqs and sweeps ((hz, amplitudes))

maxmsp.addHandler('importSweep', (hz: number, y: number) => {
	/*
	Load the Javascript API with the results of an SPL test, one frequency and amplitude pair at a time.
	The Javascript API is reset when a new value for 20hz is received.
	*/
	if (hz === 20) {
		SPL_sweep = []
	}
	SPL_sweep.push([hz, y])
})

// maxmsp.addHandler('analyseSweep', (threshold: number = -40) => {
maxmsp.addHandler('analyseSweep', () => {
	// 	let prev_amp = -200.0

	// for (let i = 0; i < freqs.length - 1; i++) {
	// 	if (sweeps[i] > prev_amp && sweeps[i] > sweeps[i + 1] && (threshold === 0 || sweeps[i] > threshold)) {
	// 		maxmsp.post('you did it')
	// 		peaks.push([freqs[i], sweeps[i]])
	// 	}
	// }

	// 	// TODO: Set min freq difference for modes

	// 	peaks.sort((a, b) => b[1] - a[1])
	// threshold
	maxmsp.outletBang()
})

// maxmsp.addHandler('getMode', (n) => {
// 	/*
// 	Get the Nth largest mode of a precomputed
// 	*/
// 	if (n < peaks.length && peaks[n]) {
// 		maxmsp.outlet(peaks[n])
// 	} else {
// 		maxmsp.post('Mode number out of range.')
// 	}
// })
