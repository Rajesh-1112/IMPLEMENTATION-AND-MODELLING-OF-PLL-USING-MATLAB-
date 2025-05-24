# Implementation of PLL Using MATLAB

## Project Overview

This project demonstrates the design, simulation, and analysis of a Phase Locked Loop (PLL) system using MATLAB and Simulink. The primary objective is to achieve frequency and phase synchronization between an input signal and the output of a locally generated oscillator—an essential function in electronic and communication systems. The project explores PLL behavior under various conditions and evaluates its effectiveness in maintaining phase and frequency coherence.

---

## Project Details

- **Institution:** Rajiv Gandhi University of Knowledge Technologies, RK Valley
- **Department:** Electronics and Communication Engineering
- **Academic Year:** 2024-2025
- **Team Members:** Y. Rajesh, K. Sathvika, P. Karthik
- **Guide:** Mr. K. Harinath Reddy

---

## What is a PLL?

A Phase Locked Loop (PLL) is a feedback control system that automatically adjusts the phase of a locally generated signal to match the phase of an input signal. PLLs are widely used in clock generation, frequency synthesis, demodulation, and carrier recovery in communication systems.

### Basic Architecture

A typical PLL comprises three main components:

- **Phase Detector (PD) / Phase Frequency Detector (PFD):** Compares the phase and frequency of the input and feedback signals, generating error signals ("UP" or "DOWN") to indicate the required adjustment.
- **Loop Filter (LF):** Processes the error signal to produce a smooth control voltage, filtering out high-frequency noise.
- **Voltage Controlled Oscillator (VCO):** Adjusts its output frequency based on the control voltage, aiming to minimize the phase error.

### Types of PLLs Covered

- Linear PLL (Analog)
- Digital PLL
- All-Digital PLL
- Soft PLL (Adaptive)

### Key Terms

- **Lock-in Range:** Frequency range over which the PLL can maintain lock.
- **Capture Range:** Frequency range within which the PLL can acquire lock.
- **Pull-in Time:** Time required to achieve lock.
- **Bandwidth:** Frequency range over which the PLL can track input changes.

---

## Simulink Model

The Simulink block diagram of the PLL implementation includes:

- **Input Signal Source:** Generates the input waveform.
- **Gain Blocks (10 and 20):** Scale the input and feedback signals.
- **Summing Junction:** Combines the scaled input and feedback signals to produce a phase error.
- **Integrator (1/s):** Integrates the phase error, simulating the loop filter.
- **Frequency and Phase Conversion:** The integrated signal is multiplied by \(2\pi\) and passed through a cosine function to generate the VCO output.
- **VCO and Output Path:** The VCO output is scaled and fed back into the loop as well as to the output scope.
- **Matrix Multiply, Butterworth Filter, and Continuous-Time VCO:** Used for additional signal processing and filtering, modeling real-world PLL behavior.
- **Scope:** Captures and displays the signals for analysis.
  
### block diagram
 ![pll plots](https://github.com/user-attachments/assets/c9b8ced1-fc31-436b-ac09-5cf39dc818b5)


### Results
![image](https://github.com/user-attachments/assets/84a1ad93-8c5e-4650-8760-2765c9696043)


PLLs are essential in a wide range of modern electronic and communication systems, including:

- Frequency demodulation (FM receivers)

  ### Frequency Modulation & Demodulation model diagram
  ![fm demodulation using pll design](https://github.com/user-attachments/assets/d1e646dc-6401-4a96-8d6e-961fba25d2f5)

### Frequency Modulation & Demodulation Results
![fm demodultion using pll output](https://github.com/user-attachments/assets/e39c8cab-81ac-4441-bd03-7842e650290d)

- Frequency synthesis (generating multiple frequencies from a reference)
- Clock generation and multiplication (for microprocessors and digital systems)
- Carrier and clock recovery (in data transmission and storage)
- Skew reduction and jitter/noise suppression in high-speed circuits

---

## Conclusion

This project successfully demonstrates the implementation and simulation of a PLL using MATLAB and Simulink. The block diagram and simulation results visually confirm the PLL's ability to lock onto an input signal, providing a practical understanding of feedback control, synchronization, and signal processing in electronics and communication engineering.

---

**Keywords:**  
Phase Locked Loop (PLL), Phase Detector (PD), Voltage Controlled Oscillator (VCO), Loop Filter (LF), MATLAB, Simulink, Frequency Synchronization, Phase Synchronization, Communication Systems, Simulation
