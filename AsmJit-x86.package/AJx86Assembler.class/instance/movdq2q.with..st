instructions generated
movdq2q: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Move Quadword from XMM to MMX Technology Register
	Pseudo Code
-----------
DEST = SRC[63:0];

Description
-----------
Moves the low quadword from the source operand (second operand) to the
destination operand (first operand). The source operand is an XMM
register and the destination operand is an MMX technology register.

This instruction causes a transition from x87 FPU to MMX technology
operation (that is, the x87 FPU top-of-stack pointer is set to 0 and the
x87 FPU tag word is set to all 0s [valid]). If this instruction is
executed while an x87 FPU floating-point exception is pending, the
exception is handled before the MOVDQ2Q instruction is executed.

In 64-bit mode, use of the REX.R prefix permits this instruction to
access additional registers (XMM8-XMM15).

"
	^ self 
		addInstruction: #movdq2q
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }