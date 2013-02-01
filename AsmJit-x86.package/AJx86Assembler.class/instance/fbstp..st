instructions generated
fbstp: aMemoryOperand
	"Store BCD Integer and Pop
	Pseudo Code
-----------
DEST = BCD(ST(0));
PopRegisterStack;

Description
-----------
Converts the value in the ST(0) register to an 18-digit packed BCD
integer, stores the result in the destination operand, and pops the
register stack. If the source value is a non-integral value, it is
rounded to an integer value, according to rounding mode specified by the
RC field of the FPU control word. To pop the register stack, the
processor marks the ST(0) register as empty and increments the stack
pointer (TOP) by 1.

The destination operand specifies the address where the first byte
destination value is to be stored. The BCD value (including its sign
bit) requires 10 bytes of space in memory.

The following table shows the results obtained when storing various
classes of numbers in packed BCD format.

  ST(0)                                    DEST
  ---------------------------------------- ------
  - = or Value Too Large for DEST Format   \*
  F \<= - 1                                - D
  -1 \< F \< -0                            \*\*
  - 0                                      - 0
  + 0                                      + 0
  + 0 \< F \< +1                           \*\*
  F \>= +1                                 + D
  + = or Value Too Large for DEST Format   \*
  NaN                                      \*

  : FBSTP Results

-   Notes:
-   F refers to a finite floating-point value.
-   D refers to packed-BCD number.
-   \* Indicates floating-point invalid-operation (\#IA) exception.
-   \*\* ±0 or ±1, depending on the rounding mode.

If the converted value is too large for the destination format, or if
the source operand is an ∞, SNaN, QNAN, or is in an unsupported format,
an invalid-arithmetic-operand condition is signaled. If the
invalid-operation exception is not masked, an invalidarithmetic-operand
exception (\#IA) is generated and no value is stored in the desti-nation
operand. If the invalid-operation exception is masked, the packed BCD
indefinite value is stored in memory.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fbstp
		operands: { aMemoryOperand }