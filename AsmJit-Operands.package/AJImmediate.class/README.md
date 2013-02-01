I am an immediate (constant integer) operand used by the assembler.

Example:
	asm := AJx64Assembler new.
	"create an immediate from an integer"
	1 asImm.
	"implicitely use an immediate in an assembly instrution"
	asm add: 1 to: asm RAX.
	