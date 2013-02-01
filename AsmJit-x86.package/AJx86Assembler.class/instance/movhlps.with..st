instructions generated
movhlps: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Packed Single-FP Values High to Low
	Pseudo Code
-----------
DEST[63:0] = SRC[127:64]; (* DEST[127:64] unchanged *)

Description
-----------
Moves two packed single-precision floating-point values from the high
quadword of the source operand (second operand) to the low quadword of
the destination operand (first operand). The high quadword of the
destination operand is left unchanged.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movhlps
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }