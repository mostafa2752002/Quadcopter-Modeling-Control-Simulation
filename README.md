# 🚁 Quadcopter Modeling, Control, and Simulation  
**Aerospace Engineering Senior Project — Cairo University**  
_Model-Based Design using MATLAB & Simulink_

<img width="668" height="392" alt="SimpleFlightAndSensorInUE4Example_04" src="https://github.com/user-attachments/assets/6a0b00dd-637b-41dd-8f6d-dc7fa7c5daaf" />

---

## 🧩 Overview  
This project presents a complete **Model-Based Design (MBD)** workflow for a **+ configuration quadcopter**, developed fully in **Simulink**.  
It covers the entire process — from **dynamic modeling** and **control design** and **simulation, verification**.

The system implements **6-DOF rigid-body dynamics**, **PD control loops** for stability, and **Software-in-the-Loop (SIL)** testing to ensure embedded readiness.

---

## ⚙️ Key Features  
- ✅ Full **12-state 6DOF dynamics** in Simulink  
- 🎯 **PD controllers** for altitude, yaw, roll, and pitch (nested inner–outer loops)  
- 🧠 **Linearization** and control tuning via MATLAB **SISOTOOL**  
- 🧱 **Subsystem-based model** for clean modular design  
- 🛫 **3D visualization** and trajectory tracking using UAV & Aerospace Toolboxes  
---

## 🧰 Project Structure  

| File / Folder | Description |
|----------------|-------------|
| **QuadCopter_Model.slx** | Main Simulink model (top-level system) |
| **quad_data.m** | Defines quadcopter parameters (mass, inertia, b, d, l) |
| **Tarek Deif’s Quad.xlsx** | Parameter sheet for physical constants |
| **Visualizations/** | Screenshots, plots, and simulation videos |

---

## 🧠 Model Architecture  

[Command Inputs (Δalt, Δroll, Δpitch, Δyaw)] --> [PD Controller Loops] --> [Force & Moment Calculation] --> [6DOF Equations of Motion] --> [3D Visualization]

---

## ▶️ How to Run

1. Open MATLAB (R2021b or newer).
2. Open the **`quad_data.m`** file and run it.
3. Open **`QuadCopter_Model.slx`** in Simulink.
4. Click **Run ▶** to start the simulation.

Results can be viewed in the **Scopes** and **Visualization** subsystems.

---

## 🎯 Control System Summary

| Loop          | Controlled Variable | Controller | Gains (Example)          |
| ------------- | ------------------- | ---------- | ------------------------ |
| Altitude      | z                   | PD         | Kp = 30, Kd = 89         |
| Yaw           | ψ                   | PD         | Kp = 400, Kd = 250       |
| Pitch (Inner) | θ                   | PD         | Kp = 25, Kd = 15         |
| Roll (Inner)  | φ                   | PD         | Kp = 25, Kd = 15         |
| X / Y (Outer) | Position            | PD         | Kp = 0.0267, Kd = 0.1038 |

---

## 💻 Requirements

* MATLAB R2021b or newer
* Simulink
* Aerospace Blockset
* UAV Toolbox (optional for 3D visualization)
* Control System Toolbox

---

## 🌱 Future Enhancements

* Implement **LQR / PID** comparison
* Add **trajectory tracking** and **path following**
* Integrate **PX4 SITL** for real-time testing
* Explore **fault-tolerant control** logic



