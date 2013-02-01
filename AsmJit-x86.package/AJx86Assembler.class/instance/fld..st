instructions generated
fld: aMemoryOrX87Register
	"Load Floating Point Value
	Description
-----------
Pushes the source operand onto the FPU register stack. The source
operand can be in single-precision, double-precision, or double
extended-precision floating-point format. If the source operand is in
single-precision or double-precision floating-point format, it is
automatically converted to the double extended-precision floating-point
format before being pushed on the stack.

The FLD instruction can also push the value in a selected FPU register
[ST(i)] onto the stack. Here, pushing register ST(0) duplicates the
stack top.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #fld
		operands: { aMemoryOrX87Register }