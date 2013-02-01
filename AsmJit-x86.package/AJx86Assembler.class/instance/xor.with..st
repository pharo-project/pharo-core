instructions generated
xor: aRegisterOrMemoryOperand with: aSource
	"Logical Exclusive OR
	Pseudo Code
-----------
DEST = DEST XOR SRC;

Description
-----------
Performs a bitwise exclusive OR (XOR) operation on the destination
(first) and source (second) operands and stores the result in the
destination operand location. The source operand can be an immediate, a
register, or a memory location; the destination operand can be a
register or a memory location. (However, two memory operands cannot be
used in one instruction.) Each bit of the result is 1 if the
corresponding bits of the operands are different; each bit is 0 if the
corresponding bits are the same.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, using a REX prefix in the form of REX.R permits access
to additional registers (R8-R15). Using a REX prefix in the form of
REX.W promotes operation to 64 bits. See the summary chart at the
beginning of this section for encoding data and limits.

"
	^ self 
		addInstruction: #xor
		operands: { aRegisterOrMemoryOperand . aSource }