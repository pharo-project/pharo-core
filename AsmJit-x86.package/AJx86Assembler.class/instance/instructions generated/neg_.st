neg: aDestination
	"Two's Complement Negation
	Pseudo Code
-----------
IF DEST = 0
    CF = 0;
ELSE
    CF = 1;
FI;
DEST = [- (DEST)]

Description
-----------
Replaces the value of operand (the destination operand) with its two's
complement. (This operation is equivalent to subtracting the operand
from 0.) The destination operand is located in a general-purpose
register or a memory location.

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #neg
		operands: { aDestination }