# TopMetalSe-OpenMPW6

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) [![CI](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/user_project_ci.yml) [![Caravan Build](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml/badge.svg)](https://github.com/efabless/caravel_user_project_analog/actions/workflows/caravan_build.yml)

---


## A Low Noise Charge Sensing Pixelated CMOS Detector for the Selena Neutrino Experiment

Overview
=================

The TopMetalSe-MPW6is a prototype charge sensing detector for the Selena Neutrino Experiment submitted to the OpenMPW-6 Shuttle Run. It is based on the [TopMetal-II <sup>- </sup> Active Pixel Sensor](https://arxiv.org/abs/1509.08611), which we had previously characterized. A TopMetal pixel contains an electrode made from the topmost metal layer, surrounded by a guard ring (gring). Each pixel is directly coupled to a charge sensitive amplifier (CSA), which converts input charge to an analog signal. The TopMetalSe-MPW6 pixels have a square geometry, with a 10.2 µm electrode with and a 15 µm pixel pitch. The simulated noise is ~15 electrons with a charge vonserion gain of ~25 µV per electron.

The TopMetaelSe will be implemented in the final detector design of the Selena neutrino experiment, which couples an amorphous selenium (aSe) ionization target to a CMOS pixel array as an imaging detector for next generation neutrino physics. The physics is detailed in the [White Paper here](https://arxiv.org/abs/2203.08779). In a nutshell, by coupling CMOS charge sensors directly to aSe, one can image electron tracks as they move through the detector. By measuing the energy, track geometry and timing of these electrons, we can look for unique nuclear decay patterns to study neutrinos.

For the final design, the TopMetalSe will require an opening in the passivation layer in order to directly couple to aSe. But for the OpenMPW 6 run, we are unable to do so, and thus, this submission will be used as a proof of concept of the design and workflow. The stray capcitance between the surrounding gring and the electrode will allow us to inject charge and thus characterize the pixel performance.

Details and Simulation
=================
**Pixel Geometry**
![pixel_geometry](https://user-images.githubusercontent.com/47924327/172535169-f2c59109-5b95-434f-8d99-77ab16f409d0.png)

The Pixel Geometry is shown here. To meet DRC requirements, the gring is 1.6µm thick, shared between pixels (effective 0.8µm thick gring per pixel). In addition, the spacing between the gring and input electrode is 1.6µm. Parasitic extraction from Magic gives the capcitance between the gring and electrode as 3.1 femtofarads.

**Sensor Structure**
![pixel](https://user-images.githubusercontent.com/47924327/172540583-224cc7d1-e437-48fe-b046-d3754bd299ac.png)

The core of each pixel is the charge sensitive amplifier, schematic shown above. It is formed using a dual-input cascode amplifier, a source-follower output stage and a feedback loop with a MiM capacitor and a transistor acting as a resistor. The gate-source voltage of the feedback resistor is determined by the difference between CSA_VREF and VREF and controls the decay constant of the CSA. Following the output of the CSA, there is two source follower stages, followed by a row selection transistor.

During readout, a digital scanning module controls the ROW_SEL port to select out a single row of pixels. Exterior the pixel array is series of COL_SEL transistors, which will allow us to fully multiplex the pixel outputs onto a single readout line. The output of the array is fed to an output buffer stage, formed from a previously submitted [open-source OpAmp](https://github.com/diegohernando/caravel_fulgor_opamp). 

We simulate a simple 3x3 pixel array, with the output of the chip shown below at a clock frequency of 1kHz. The positive pulses show the pixel switching, with the higher pulses being the column switching. At 65 milliseconds, we inject a a 6242 electron signal (100 pA for 10 microseconds) onto pixel 6.
![sim_output](https://user-images.githubusercontent.com/47924327/172539592-b9d15169-7741-4b30-8cc6-668b7d3bcaa9.png)
