instructions generated
stmxcsr: aMemoryOperand
	"Store MXCSR Register State
	Pseudo Code
-----------
m32 = MXCSR;

Description
-----------
Stores the contents of the MXCSR control and status register to the
destination operand. The destination operand is a 32-bit memory
location. The reserved bits in the MXCSR register are stored as 0s.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #stmxcsr
		operands: { aMemoryOperand }