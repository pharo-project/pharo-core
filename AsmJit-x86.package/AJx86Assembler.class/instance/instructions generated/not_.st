not: aDestination
	"One's Complement Negation
	Pseudo Code
-----------
DEST = NOT DEST;

Description
-----------
Performs a bitwise NOT operation (each 1 is set to 0, and each 0 is set
to 1) on the destination operand and stores the result in the
destination operand location. The destination operand can be a register
or a memory location.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #not
		operands: { aDestination }