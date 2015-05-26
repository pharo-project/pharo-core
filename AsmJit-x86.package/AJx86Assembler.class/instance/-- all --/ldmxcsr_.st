ldmxcsr: aMemoryOperand
	"Load MXCSR Register
	Pseudo Code
-----------
MXCSR = m32;
C/C++ Compiler Intrinsic Equivalent
_mm_setcsr(unsigned int i)

Description
-----------
Loads the source operand into the MXCSR control/status register. The
source operand is a 32-bit memory location. See 'MXCSR Control and
Status Register' in Chapter 10, of theIntel®64 and IA-32 Architectures
Software Developer's Manual,Volume 1, for a description of the MXCSR
register and its contents.

The LDMXCSR instruction is typically used in conjunction with the
STMXCSR instruction, which stores the contents of the MXCSR register in
memory.

The default MXCSR value at reset is 1F80H.

If a LDMXCSR instruction clears a SIMD floating-point exception mask bit
and sets the corresponding exception flag bit, a SIMD floating-point
exception will not be immediately generated. The exception will be
generated only upon the execution of the next SSE or SSE2 instruction
that causes that particular SIMD floating-point exception to be
reported.

This instruction's operation is the same in non-64-bit modes and 64-bit
mode.

"
	^ self 
		addInstruction: #ldmxcsr
		operands: { aMemoryOperand }