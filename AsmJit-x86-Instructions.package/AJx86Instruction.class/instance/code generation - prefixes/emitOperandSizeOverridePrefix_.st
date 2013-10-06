emitOperandSizeOverridePrefix: anOperand
	"If creating 64bit code, this must be called last of the prefix-generators, as the 64-bit prefixes are required to precede the opcode"

	"Switch to 16-bit operand mode for the next opcode if necessary"
	anOperand is16 ifTrue: [ self emitByte: 16r66].
	self emitRexRM: anOperand is64 regCode: 0 rm: anOperand
	
	
