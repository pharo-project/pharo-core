movdqa: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Aligned Double Quadword
	Pseudo Code
-----------
DEST = SRC;
(* #GP if SRC or DEST unaligned memory operand *)

Description
-----------
Moves a double quadword from the source operand (second operand) to the
destination operand (first operand). This instruction can be used to
load an XMM register from a 128-bit memory location, to store the
contents of an XMM register into a 128-bit memory location, or to move
data between two XMM registers. When the source or destination operand
is a memory operand, the operand must be aligned on a 16-byte boundary
or a general-protection exception (\#GP) will be generated.

To move a double quadword to or from unaligned memory locations, use the
MOVDQU instruction.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movdqa
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }