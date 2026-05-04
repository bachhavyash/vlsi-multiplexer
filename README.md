# 2:1 and 4:1 Multiplexer — Verilog HDL

## Overview
Structural implementation of a **2:1 MUX** and a **4:1 MUX** built using three 2:1 MUX instances. A multiplexer selects one of N inputs and routes it to the output based on the select signal.

## Design Hierarchy — 4:1 MUX
```
mux_4to1
    ├── mux_2to1 M1  (selects between I0, I1)  → w1
    ├── mux_2to1 M2  (selects between I2, I3)  → w2
    └── mux_2to1 M3  (selects between w1, w2)  → Y
```

## Truth Tables

### 2:1 MUX
| S | Y |
|---|---|
| 0 | I0 |
| 1 | I1 |

### 4:1 MUX
| S[1] | S[0] | Y  |
|------|------|----|
|  0   |  0   | I0 |
|  0   |  1   | I1 |
|  1   |  0   | I2 |
|  1   |  1   | I3 |

## Files
| File | Description |
|------|-------------|
| `mux.v` | 2:1 and 4:1 MUX design |
| `mux_tb.v` | Testbench for both MUXes |

## How to Run

### EDA Playground
1. [https://www.edaplayground.com](https://www.edaplayground.com)
2. Simulator: **Icarus Verilog 0.9.7**
3. Paste both files → Click **Run**

## Author
**Yashganesh Bachhav** |TE EnTC | LGNSCOE Nashik  
VLSI Internship — CODTECH IT Solutions (Jan–Feb 2025)
