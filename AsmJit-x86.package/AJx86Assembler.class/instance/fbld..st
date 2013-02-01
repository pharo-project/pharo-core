instructions generated
fbld: aMemoryOperand
	"Load Binary Coded Decimal
	Pseudo Code
-----------
TOP = TOP - 1;
ST(0) = ConvertToDoubleExtendedPrecisionFP(SRC);

Description
-----------
Converts the BCD source operand into double extended-precision
floating-point format and pushes the value onto the FPU stack. The
source operand is loaded without rounding errors. The sign of the source
operand is preserved, including that of -0.

The packed BCD digits are assumed to be in the range 0 through 9; the
instruction does not check for invalid digits (AH through FH).
Attempting to load an invalid encoding produces an undefined result.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fbld
		operands: { aMemoryOperand }