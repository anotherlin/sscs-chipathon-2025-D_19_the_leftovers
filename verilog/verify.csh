#!/bin/sh

iverilog logic_level.v switch_level.v testbench.v
./a.out
