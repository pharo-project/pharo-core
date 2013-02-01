instructions generated
crc32: aRegister with: aSourceRegisterOrMemory
	"Accumulate CRC32 Value
	Description
-----------
Starting with an initial value in the first operand (destination
operand), accumulates a CRC32 (polynomial 0x11EDC6F41) value for the
second operand (source operand) and stores the result in the destination
operand. The source operand can be a register or a memory location. The
destination operand must be an r32 or r64 register. If the destination
is an r64 register, then the 32-bit result is stored in the least
significant double word and 00000000H is stored in the most significant
double word of the r64 register.

The initial value supplied in the destination operand is a double word
integer stored in the r32 register or the least significant double word
of the r64 register. To incrementally accumulate a CRC32 value, software
retains the result of the previous CRC32 operation in the destination
operand, then executes the CRC32 instruction again with new input data
in the source operand. Data contained in the source operand is processed
in reflected bit order. This means that the most significant bit of the
source operand is treated as the least significant bit of the quotient,
and so on, for all the bits of the source operand. Likewise, the result
of the CRC operation is stored in the destination operand in reflected
bit order. This means that the most significant bit of the resulting CRC
(bit 31) is stored in the least significant bit of the destination
operand (bit 0), and so on, for all the bits of the CRC.

"
	^ self 
		addInstruction: #crc32
		operands: { aRegister . aSourceRegisterOrMemory }