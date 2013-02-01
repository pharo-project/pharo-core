instructions generated
bswap: aDestinationRegister
	"Byte Swap
	Description
-----------
Reverses the byte order of a 32-bit or 64-bit (destination) register.
This instruction is provided for converting little-endian values to
big-endian format and vice versa. To swap bytes in a word value (16-bit
register), use the XCHG instruction. When the BSWAP instruction
references a 16-bit register, the result is undefined.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits. See the summary chart at the beginning of this
section for encoding data and limits.

IA-32 Architecture Legacy Compatibility

The BSWAP instruction is not supported on IA-32 processors earlier than
the Intel486™ processor family. For compatibility with this instruction,
software should include functionally equivalent code for execution on
Intel processors earlier than the Intel486 processor family.

"
	^ self 
		addInstruction: #bswap
		operands: { aDestinationRegister }