instructions generated
shrd: aDestinationRegisterOrMemory with: aSourceRegister with: aSourceRegisterOrImmediate
	"Double Precision Shift Right
	Description
-----------
The SHRD instruction is useful for multi-precision shifts of 64 bits or
more.

The instruction shifts the first operand (destination operand) to the
right the number of bits specified by the third operand (count operand).
The second operand (source operand) provides bits to shift in from the
left (starting with the most significant bit of the destination
operand).

The destination operand can be a register or a memory location; the
source operand is a register. The count operand is an unsigned integer
that can be stored in an immediate byte or the CL register. If the count
operand is CL, the shift count is the logical AND of CL and a count
mask. In non-64-bit modes and default 64-bit mode, the width of the
count mask is 5 bits. Only bits 0 through 4 of the count register are
used (masking the count to a value between 0 and 31). If the count is
greater than the operand size, the result is undefined.

If the count is 1 or greater, the CF flag is filled with the last bit
shifted out of the destination operand. For a 1-bit shift, the OF flag
is set if a sign change occurred; otherwise, it is cleared. If the count
operand is 0, flags are not affected.

In 64-bit mode, the instruction's default operation size is 32 bits.
Using a REX prefix in the form of REX.R permits access to additional
registers (R8-R15). Using a REX prefix in the form of REX.W promotes
operation to 64 bits (upgrading the count mask to 6 bits). See the
summary chart at the beginning of this section for encoding data and
limits.

"
	^ self 
		addInstruction: #shrd
		operands: { aDestinationRegisterOrMemory . aSourceRegister . aSourceRegisterOrImmediate }