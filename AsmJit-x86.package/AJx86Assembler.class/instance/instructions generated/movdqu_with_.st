movdqu: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Unaligned Double Quadword
	Pseudo Code
-----------
DEST = SRC;
1. If alignment checking is enabled (CR0.AM = 1, RFLAGS.AC = 1, and CPL = 3), an alignment-check exception (#AC) may or may not be generated (depending on processor implementation) when the operand is not aligned on an 8-byte boundary.

Description
-----------
Moves a double quadword from the source operand (second operand) to the
destination operand (first operand). This instruction can be used to
load an XMM register from a 128-bit memory location, to store the
contents of an XMM register into a 128-bit memory location, or to move
data between two XMM registers. When the source or destination operand
is a memory operand, the operand may be unaligned on a 16-byte boundary
without causing a general-protection exception (\#GP) to be generated.1

To move a double quadword to or from memory locations that are known to
be aligned on 16-byte boundaries, use the MOVDQA instruction.

While executing in 16-bit addressing mode, a linear address for a
128-bit data access that overlaps the end of a 16-bit segment is not
allowed and is defined as reserved behavior. A specific processor
implementation may or may not generate a general-protection exception
(\#GP) in this situation, and the address that spans the end of the
segment may or may not wrap around to the beginning of the segment.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movdqu
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }