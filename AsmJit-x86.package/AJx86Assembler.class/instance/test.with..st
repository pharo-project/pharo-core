instructions generated
test: aRegisterOrMemory with: aRegisterOrImmediate
	"Logical Compare
	Description
-----------
Computes the bit-wise logical AND of first operand (source 1 operand)
and the second operand (source 2 operand) and sets the SF, ZF, and PF
status flags according to the result. The result is then discarded.

In 64-bit mode, using a REX prefix in the form of REX.R permits access
to additional registers (R8-R15). Using a REX prefix in the form of
REX.W promotes operation to 64 bits. See the summary chart at the
beginning of this section for encoding data and limits.

"
	^ self 
		addInstruction: #test
		operands: { aRegisterOrMemory . aRegisterOrImmediate }