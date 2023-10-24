const maxmsp = require('max-api');

let freqs = [] // frequencies analysed (hz)
let sweeps = [] // peak amplitude per frequency (decibels)
let peaks = [] // subset of freqs and sweeps ((hz, amplitudes))

maxmsp.addHandler('importSweep', (hz, y) => {
	if (hz === 20.) {
		freqs = []
		sweeps = []
	}
	freqs.push(hz)
	sweeps.push(y)
})

maxmsp.addHandler('analyseSweep', () => {
	let prev_amp = -200
	const thresh = -40

	for (let i = 0; i < freqs.length - 1; i++) {
		if (sweeps[i] > prev_amp && sweeps[i] > sweeps[i + 1] && sweeps[i] > thresh) {
			maxmsp.post('you did it')
			peaks.push([freqs[i], sweeps[i]])
		}
	}

	// TODO: Set min freq difference for modes

 	peaks.sort((a, b) => b[1] - a[1])
	maxmsp.outletBang()
})

maxmsp.addHandler('getMode', (n) => {
	if (n < peaks.length) {
		maxmsp.outlet(peaks[n])
	}
	else {
		maxmsp.post("Mode num too high")
	}
})
