# programmable-counter-verilog
A 4-bit programmable synchronous counter designed in Verilog.  The counter supports up counting, down counting, and parallel load operations.  Includes testbench and GTKWave simulation results.
# Programmable Counter (Verilog)

This project implements a 4-bit programmable synchronous counter using Verilog.

## 🔧 Features
- Up counting
- Down counting
- Parallel load
- Synchronous design
- Reset and Enable control

## 📁 Files
- `counter.v` → Main Verilog design
- `testbench.v` → Testbench
- `report.pdf` → Project report
- `testbench.vcd` → Simulation waveform

## ⚙️ How It Works
The counter updates on the rising edge of the clock.
- Reset → clears output
- Load → loads input value
- upOrDown → controls direction

## 🧪 Simulation
Tested using GTKWave. All operations work correctly.

## 👨‍💻 Authors
- Miraç Aydın  
- Salih Artuç  
- Samiullah Arman  
- Yusuf Eren Şerbetçi
