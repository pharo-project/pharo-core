movlhps: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Packed Single-FP Values Low to High
	Pseudo Code
-----------
DEST[127:64] = SRC[63:0]; (* DEST[63:0] unchanged *)

Description
-----------
Moves two packed single-precision floating-point values from the low
quadword of the source operand (second operand) to the high quadword of
the destination operand (first operand). The low quadword of the
destination operand is left unchanged.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movlhps
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }