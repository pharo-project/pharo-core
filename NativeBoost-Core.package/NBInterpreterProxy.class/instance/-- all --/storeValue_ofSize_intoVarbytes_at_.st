storeValue: op ofSize: numBytes intoVarbytes: destOop at: offset
	" input:
	  op - a register operand
	  numBytes - integer
	  destOop - register operand with variable bytes oop
	  offset - integer value"

	| mem |
	mem := destOop ptr + (objectFormat varBytesFirstField + offset).
	self assert: (op isGeneralPurpose & destOop isGeneralPurpose).
	asm mov: (asm reg: op index size: numBytes) to: (mem size: numBytes).
