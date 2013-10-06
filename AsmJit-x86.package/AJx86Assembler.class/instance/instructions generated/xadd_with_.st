xadd: aDestinationRegisterOrMemory with: aSourceRegister
	"Exchange and Add
	Pseudo Code
-----------
TEMP = SRC + DEST;
SRC = DEST;
DEST = TEMP;

Description
-----------
Exchanges the first operand (destination operand) with the second
operand (source operand), then loads the sum of the two values into the
destination operand. The destination operand can be a register or a
memory location; the source operand is a register.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

"
	^ self 
		addInstruction: #xadd
		operands: { aDestinationRegisterOrMemory . aSourceRegister }