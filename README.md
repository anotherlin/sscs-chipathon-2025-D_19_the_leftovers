# sscs-chipathon-2025-D_19_the_leftovers
Repository for the SSCS Chipathon

Goal was originally to implement a full adder (s = a ^ b ^ c_in, c_out = (a & b) + (b & c) + (c & a)) standard cell. But to gain insight, we may just start by implementing XOR and XNOR standard cells.

-> Write both Verilog switch level and Spice simulations to ensure correctness before any layout attempt.

# XOR and XNOR standard cells

It appears possible to implement XOR or XNOR using only 4 transistors (see pass4_xor.sch or more succintly xor.v). But pass gates are not very good at driving, hence the standard cell would most probably have an output buffer stage (inverter): XNOR -> INV = XOR (same idea for XNOR). So 6 transistors total.

Standard cell libraries usually features XOR3 and XNOR3. This can be implemented as a simple cascade of 2 XORs or XNORs, so 8 transistors, adding a buffer stage, that would be a total of 10 transistors. A probably better implementation (xor3_10t) using the same number of 10 transitors, is possible.

# MAJ3 standard cell

It seems that some open source synthesis tools are unable to handle multi-output standard cells. The sum expression is basically a XOR3. Whereas the carry-out expression is also referred as _majority_. This majority gate may be useful for other things. But having a MAJ3 gate should help. Using ideas from the XOR and XNOR implementation, it is implementable using 6 transistors.

# Full adder

The 4 transistors implementation has weak signal case but that may be used "internally" in the full adder standard cell. Also, c_out = ((a ^ b) & c) + (a & b), so the full adder may not be much more than XOR logic and a few more transistors. 

# Development log 

## (16th August 2025)

* Re-organized/cleaned-up Verilog code. XOR2, XNOR2, XOR3, and MAJ3 ready a switch level (simulation done).
* Had my questions answered. (Can input of a standard cell be the input of a pass transistor? **Yes**. Does synthesis tools pick "best" standard cell variant if such variants exist? **Yes, it tries.**)
* Tried Yosys' _eqy_ logic equivalence checker. I was a bit naive. Having to handle tri-state for an equivalence checker is no small task.
* Last but not least, able to run spice simulation of an inverter.

## (12th August 2025)

* Switch level verilog written and verified that the 4 and 6 transistors implementations of the XOR and XNOR logic functions are correct.
* Basic "conceptual" schematics drawn for 4 and 6 transistors implementation using xschem.

# TODO, ordered by priority:

1. Convert all switch level verilog to spice and do actual simulation.
2. Draw correct xschem schematic (and not just conceptual ones).
3. Have the full adder circuit at switch level fully determined and the verilog testbench written.
4. Implement XNOR3.
