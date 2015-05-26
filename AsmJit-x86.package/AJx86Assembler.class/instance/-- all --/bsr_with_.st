bsr: aRegister with: aSourceRegisterOrMemory
	"Bit Scan Reverse
	Description
-----------
Searches the source operand (second operand) for the most significant
set bit (1 bit). If a most significant 1 bit is found, its bit index is
stored in the destination operand (first operand). The source operand
can be a register or a memory location; the destination operand is a
register. The bit index is an unsigned offset from bit 0 of the source
operand. If the content source operand is 0, the content of the
destination operand is undefined.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

"
	^ self 
		addInstruction: #bsr
		operands: { aRegister . aSourceRegisterOrMemory }