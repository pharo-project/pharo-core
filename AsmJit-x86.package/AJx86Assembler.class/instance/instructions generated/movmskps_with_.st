movmskps: aRegisterOrMemory1 with: aRegisterOrMemory2
	"Extract Packed Single-FP Sign Mask
	Description
-----------
Extracts the sign bits from the packed single-precision floating-point
values in the source operand (second operand), formats them into a 4-bit
mask, and stores the mask in the destination operand (first operand).
The source operand is an XMM register, and the destination operand is a
general-purpose register. The mask is stored in the 4 low-order bits of
the destination operand. Zero-extend the upper bits of the destination
operand.

In 64-bit mode, the instruction can access additional registers
(XMM8-XMM15, R8-R15) when used with a REX.R prefix. The default operand
size is 64-bit in 64-bit mode.

"
	^ self 
		addInstruction: #movmskps
		operands: { aRegisterOrMemory1 . aRegisterOrMemory2 }