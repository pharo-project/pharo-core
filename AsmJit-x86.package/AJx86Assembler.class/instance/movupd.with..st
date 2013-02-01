instructions generated
movupd: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Unaligned Packed Double-FP Value
	Pseudo Code
-----------
DEST = SRC;

Description
-----------
Moves a double quadword containing two packed double-precision
floating-point values from the source operand (second operand) to the
destination operand (first operand). This instruction can be used to
load an XMM register from a 128-bit memory location, store the contents
of an XMM register into a 128-bit memory location, or move data between
two XMM registers. When the source or destination operand is a memory
operand, the operand may be unaligned on a 16-byte boundary without
causing a general-protection exception (\#GP) to be generated.1

To move double-precision floating-point values to and from memory
locations that are known to be aligned on 16-byte boundaries, use the
MOVAPD instruction.

While executing in 16-bit addressing mode, a linear address for a
128-bit data access that overlaps the end of a 16-bit segment is not
allowed and is defined as reserved behavior. A specific processor
implementation may or may not generate a general-protection exception
(\#GP) in this situation, and the address that spans the end of the
segment may or may not wrap around to the beginning of the segment.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

​1. If alignment checking is enabled (CR0.AM = 1, RFLAGS.AC = 1, and CPL
= 3), an alignment-check exception (\#AC) may or may not be generated
(depending on processor implementation) when the operand is not aligned
on an 8-byte boundary.

"
	^ self 
		addInstruction: #movupd
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }