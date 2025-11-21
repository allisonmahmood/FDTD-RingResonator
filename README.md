# FDTD Ring Resonator

A Python-based simulation of Optical Ring Resonators using the Finite Difference Time Domain (FDTD) method. This project provides tools to model electromagnetic wave propagation in waveguides and their coupling to ring resonators, visualized through interactive Jupyter Notebooks.

## Overview

This repository contains source code for simulating optical ring resonators. It uses a 1D FDTD approach to model the behavior of electric and magnetic fields as they travel through straight waveguides and couple into a ring structure. The simulation allows for the exploration of resonance effects, coupling coefficients, and wave propagation characteristics.

## Features

*   **1D FDTD Engine**: Core implementation of the Finite Difference Time Domain method for 1D electromagnetic wave simulation.
*   **Ring Resonator Model**: Simulates the coupling of waves between a straight waveguide and a ring resonator.
*   **Coupling Simulation**: Adjustable coupling coefficients to study different coupling regimes (under-coupled, critically coupled, over-coupled).
*   **Visualization**: Generates animations and plots of field propagation using Matplotlib and Seaborn.
*   **Interactive Notebooks**: Jupyter Notebooks provided for easy experimentation and parameter tuning.

## Dependencies

To run the simulations, you need the following Python libraries:

*   `numpy`
*   `matplotlib`
*   `seaborn`
*   `ipython` (for notebook interactions and display)

You can install these dependencies using pip:

```bash
pip install numpy matplotlib seaborn ipython
```

**System Requirements:**
*   `ffmpeg`: Required for saving and displaying animations as MP4 videos.

## Usage

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/allisonmahmood/FDTD-RingResonator.git
    cd FDTD-RingResonator
    ```

2.  **Launch Jupyter Notebook:**

    ```bash
    jupyter notebook
    ```

3.  **Open and Run Notebooks:**
    *   `1dFDTD.ipynb`: Contains the basic 1D FDTD simulation setup and tests.
    *   `2x1DCouple-V2.ipynb`: The main notebook for the Ring Resonator simulation, including coupling logic and full system runs.

## File Structure

*   `1dFDTD.ipynb`: Basic 1D FDTD simulation implementation.
*   `2x1DCouple-V2.ipynb`: Advanced simulation including waveguide-to-ring coupling.
*   `2x1DCouple.ipynb`: Earlier version of the coupling simulation.
*   `2x1DCouple.html`: HTML export of the coupling notebook.
*   `samples/`: Directory containing output samples and data.

## License

[Add License Information Here if applicable, otherwise omit or state "Open Source"]
