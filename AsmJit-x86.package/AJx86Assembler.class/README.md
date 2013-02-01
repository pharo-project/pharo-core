I am an Assmbler for the Intel x86 (32Bit) architecture.

Example:
	asm := AJx64Assembler new.
	"by default the assembler will set up a stack frame"
	asm noStackFrame.
	"load the constant 16r12 into the RAX register"
	asm mov: 16r12 to: asm RAX.
	"output the bytes for this instruction"
	asm bytes 