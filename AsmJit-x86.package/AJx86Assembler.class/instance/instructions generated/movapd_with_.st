movapd: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Aligned Packed Double-FP Values
	Pseudo Code
-----------
DEST = SRC;
(* #GP if SRC or DEST unaligned memory operand *)

Description
-----------
Moves a double quadword containing two packed double-precision
floating-point values from the source operand (second operand) to the
destination operand (first operand). This instruction can be used to
load an XMM register from a 128-bit memory location, to store the
contents of an XMM register into a 128-bit memory location, or to move
data between two XMM registers. When the source or destination operand
is a memory operand, the operand must be aligned on a 16-byte boundary
or a general-protection exception (\#GP) will be generated.

To move double-precision floating-point values to and from unaligned
memory locations, use the MOVUPD instruction.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movapd
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }