instructions generated
fisttp: aMemoryOperand
	"Store Integer with Truncation and Pop
	Pseudo Code
-----------
DEST = ST;
pop ST;

Description
-----------
FISTTP converts the value in ST into a signed integer using truncation
(chop) as rounding mode, transfers the result to the destination, and
pop ST. FISTTP accepts word, short integer, and long integer
destinations.

The following table shows the results obtained when storing various
classes of numbers in integer format.

  ST(0)                                   DEST
  --------------------------------------- ------
  -∞ or Value Too Large for DEST Format   \*
  F ≤ - 1                                 - I
  - 1 \< F \< + 1                         0
  F ≥ + 1                                 + I
  +∞ or Value Too Large for DEST Format   \*
  NaN                                     \*

  : FISTTP Results

-   Notes
-   F means finite floating-point value.
-   I means integer.
-   Indicates floating-point invalid-operation (\#IA) exception.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fisttp
		operands: { aMemoryOperand }