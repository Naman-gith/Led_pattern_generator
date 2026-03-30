# Led_pattern_generator# LED Pattern Generator using Counter (Verilog)

## Overview

This project implements an LED pattern generator using a counter-based approach. It creates a rotating LED pattern across 8 LEDs, commonly known as a "running light" or "chaser".

## Features

* Rotating LED pattern
* Counter-based timing control
* Simple and efficient design
* Suitable for FPGA boards

## Inputs

* `clk` : System clock
* `rst` : Reset signal

## Outputs

* `led[7:0]` : LED output pattern

## Working

* A counter increments on every clock cycle
* When the counter overflows, it triggers a pattern update
* The LED pattern rotates left in a circular fashion
* Only one LED is ON at a time

## Pattern Behavior

Initial:

```
00000001
```

Then:

```
00000010
00000100
00001000
00010000
00100000
01000000
10000000
(repeats)
```

## Timing Control

* The speed of LED movement depends on counter width
* Larger counter → slower pattern
* Smaller counter → faster pattern

## Advantages

* Minimal hardware usage
* Easy to understand and modify
* Good beginner FPGA project

## Limitations

* Fixed pattern (single running LED)
* No dynamic speed control
* No multiple pattern modes

## Possible Extensions

* Bidirectional shifting
* Multiple LED patterns
* Speed control using switches
* PWM brightness control

## Applications

* FPGA learning projects
* Visual indicators
* Debug/status displays

## Requirements

* FPGA board (Basys3, Nexys, etc.)
* Verilog synthesis tool (Vivado, Quartus)

## License

Free for educational use
