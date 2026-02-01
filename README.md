# Fault_detection
Fault_detection_in_transmission_line



Transmission Line Fault Detection using Wavelet Transform
## 📌 Project Overview

This project implements fault detection in a three-phase transmission line using wavelet transform analysis in MATLAB/Simulink.

The system simulates a realistic power transmission network and detects faults by analyzing high-frequency transient components of phase currents using Daubechies (db4) wavelet decomposition.

Faults such as:

Line-to-Ground (LG)

Double Line-to-Ground (LLG)

can be detected automatically.


## 🧰 Tools & Technologies

MATLAB

Simulink

Wavelet Toolbox

Simscape Electrical (Specialized Power Systems)


## 🏗 Simulink Blocks Used

The following blocks are used to construct the model:

Block	Purpose
powergui- 	Power system simulation environment
Three-Phase Source- 	Generates 3-phase supply
Three-Phase V-I Measurement- 	Measures voltage & current
Current Measurement- 	Phase current sensing
Distributed Parameter Line- 	Models transmission line
Three-Phase Transformer (Two Winding)- 	Voltage transformation
Three-Phase Parallel RLC Load- 	Load modeling
Three-Phase Fault-	Fault creation at selected time
Scope-	Waveform visualization
To Workspace-	Export signals to MATLAB


## 🔍 Working Principle
Step 1 — Simulation
Step 2 — Wavelet Decomposition
Step 3 — Feature Extraction
Step 4 — Fault Detection

