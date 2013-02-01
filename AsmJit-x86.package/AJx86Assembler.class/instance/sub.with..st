instructions generated
sub: aRegisterOrMemoryOperand with: aSource
	"Subtract
	Pseudo Code
-----------
DEST = (DEST - SRC);

Description
-----------
Subtracts the second operand (source operand) from the first operand
(destination operand) and stores the result in the destination operand.
The destination operand can be a register or a memory location; the
source operand can be an immediate, register, or memory location.
(However, two memory operands cannot be used in one instruction.) When
an immediate value is used as an operand, it is sign-extended to the
length of the destination operand format.

The SUB instruction performs integer subtraction. It evaluates the
result for both signed and unsigned integer operands and sets the OF and
CF flags to indicate an overflow in the signed or unsigned result,
respectively. The SF flag indicates the sign of the signed result.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

"
	^ self 
		addInstruction: #sub
		operands: { aRegisterOrMemoryOperand . aSource }