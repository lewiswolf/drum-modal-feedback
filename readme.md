# drum-modal-feedback

A max patch for analysing the modes of a drum, and feeding those modes back to the drum using a variety of synthesisers.

# Install

```bash
git clone ...
npm install
npm run build
```

### Dependencies

-   [FluCoMa](https://github.com/flucoma/flucoma-max/)
-   [HISSTools Impulse Response Toolbox](https://github.com/HISSTools/HISSTools_Impulse_Response_Toolbox)
-   [NodeJS](https://formulae.brew.sh/formula/node)
-   [SP Tools](https://github.com/rconstanzo/sp-tools)

# Usage

### Hardware

-   Drum Trigger
-   Transducer & Amplifier

### Analysis

Connect your drum to the patch's audio in, and your transducer to the audio out. Then click 'Perform ESS' and wait until it has finished. That's it!

### Modes

Once the analysis is completed, you can query the analysis bpatcher with a number of commands.

-   `getMode` takes a list of integer arguments, and outputs the nth loudest mode(s).
-   `setCluster` takes an argument in cents, and limits the output of `getMode` to not produce any modes that are less than that distance in cents apart.
-   `setRange` takes two arguments (f_min and f_max), and limits the output of `getMode` to that frequency range.

### Synthesis

There are two synthesisers in this patch. A modal resonator, whose modal amplitudes can be either randomised at every strike or left relative to the output of `getMode`. And there is a sinusoidal synthesiser which sonifies the output of `getMode`. The amplitudes of these oscillators are relative to the output of `getMode`, but can be also scaled and inverted. The oscillators are connected to an envelope generator which triggers on every drum strike. Each mode has its own envelope, whose duration is randomised around a mean (mu) with a standard deviation (sigma) both in milliseconds.

# Development

The NodeJS part of the patch is in `code/src`. For development, use `node-debug.maxpat` to test your changes.

```bash
npm run dev # npm run build with --watch flag
npm run test # test the project with eslint
npm run format # format the project
```
