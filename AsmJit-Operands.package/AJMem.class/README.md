I am memory operand used in asembly instructions.

Example:
	asm := AJx86Assembler new.
	"create a simple memory operand with RAX as base"
	asm RAX ptr.
	"the same with a 8 byte offset"
	asm RAX ptr + 8