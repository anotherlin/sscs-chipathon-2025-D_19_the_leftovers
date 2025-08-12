# sscs-chipathon-2025-D_19_the_leftovers
Repository for the SSCS Chipathon

Goal was originally to implement a full adder (s = a ^ b ^ c_in, c_out = (a & b) + (b & c) + (c & a)) standard cell. But to gain insight, we may just start by implementing XOR and XNOR standard cells.

-> Write both Verilog switch level and Spice simulations to ensure correctness before any layout attempt.

# XOR and XNOR standard cells

It appears possible to implement XOR or XNOR using only 4 transistors (see pass4_xor.sch or more succintly xor.v). But pass gates are not very good at driving, hence the standard cell would most probably have an output buffer stage (inverter): XNOR -> INV = XOR (same idea for XNOR). So 6 transistors total.

**Question 1:** Can the input of a standard cell be the signal to be passed (or not) by an NMOS or PMOS switch? If not, we can just add buffer (inverters) an the input. 
**Question 2:** Can the synthesis tool select different standard cells depending on signal strength/fanout? That is, if presented with the 4 and 6 transistors standard cells and the appropriate data, can it pick the most optimized one? 

# Full adder

The 4 transistors implementation has weak signal case but that may be used "internally" in the full adder standard cell. Also, c_out = ((a ^ b) & c) + (a & b), so the full adder may not be much more than XOR logic and a few more transistors. 

# Current status (12th August 2025)

* Switch level verilog written and verified that the 4 and 6 transistors implementations of the XOR and XNOR logic functions are correct.
* Basic "conceptual" schematics drawn for 4 and 6 transistors implementation using xschem.

# TODO, ordered by priority:

1. Simulate proposed 4 transistors (for insight) and 6 transistors (for actual implementation as standard cells) using Spice.
2. Draw correct xschem schematic (and not just conceptual ones).
3. Have the 2 pending questions answered.
4. Have the full adder circuit at switch level fully determined and the verilog testbench written
5. Maybe interesting to try if Yosys' logic equivalence is capable of handling switch level.  
    
