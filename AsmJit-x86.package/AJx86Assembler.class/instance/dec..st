instructions generated
dec: aRegisterOrMemory
	"Decrement by 1
	Pseudo Code
-----------
DEST = DEST - 1;

Description
-----------
Subtracts 1 from the destination operand, while preserving the state of
the CF flag. The destination operand can be a register or a memory
location. This instruction allows a loop counter to be updated without
disturbing the CF flag. (To perform a decrement operation that updates
the CF flag, use a SUB instruction with an immediate operand of 1.)

This instruction can be used with a LOCK prefix to allow the instruction
to be executed atomically.

In 64-bit mode, DEC r16 and DEC r32 are not encodable (because opcodes
48H through 4FH are REX prefixes). Otherwise, the instruction's 64-bit
mode default operation size is 32 bits. Use of the REX.R prefix permits
access to additional registers (R8-R15). Use of the REX.W prefix
promotes operation to 64 bits.

See the summary chart at the beginning of this section for encoding data
and limits.

"
	^ self 
		addInstruction: #dec
		operands: { aRegisterOrMemory }