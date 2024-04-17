# RTB_E15
[![Real-time Bus (RTB)](https://img.shields.io/badge/RTB_Project-FF6699)](https://www.rtb4dcc.de)
[![Kicad_Libs](https://img.shields.io/badge/Kicad_Libs-29C7FF)](https://github.com/git4dcc/RTB_SamacSys)
[![Apache License 2.0](https://img.shields.io/badge/license-Apache%20License%202.0-lightgray)](https://www.apache.org/licenses/LICENSE-2.0)

This E15 module implements a 12 channel WS2811 emulator with compatible bus timing to drive multiplex (charlieplexing) LEDs. The E15 may be cascaded with regular WS28xx chips. The number of LEDs can be auto configured (0-12). The common LED voltage is fixed to 5V.

```
Byte order:     {led_0} ... {led_N}
```

The decoder has the following features,
- **Protocol**
  - WS2811 compatible timing
- **LED ports**
  - 0..12 LEDs (auto detecting)
  - Charlieplexing (Multiplexing) output
  - 256 step PWM (300Hz)
  - gamma correction (optional)
- firmware update via V24 debug interface

[more](https://rtb4dcc.de/hardware/modules/e15/)

# PCB
<img src="https://rtb4dcc.de/wp-content/uploads/2024/04/E15_1-768x410.png" width=500>

- 2-layer PCB, FR4, 1.6mm
- CPU: AVR64DA32
- BUS: WS28xx
- LED: Charlieplexing
<br>

[Schematic](doc/E15_schematic.pdf) | [Layout](doc/E15_layout.pdf)

# Firmware
Filename structure: { **pcb** }{ **code** }{ **version** }.hex

Example: **E15F0001**.hex

|   | Description |
| --- | --- |
| **pcb** | Name of matching hardware (**E15**) |
| **code** | Type of code contained (**R**=rom, **B**=bootloader, **F**=flash, **U**=bld update, **P**=UPDI factory code) |
| **version** | Release version (**####**) |
