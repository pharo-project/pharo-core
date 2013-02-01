code generation
emitX86Inl: opCode reg: reg
	"Emit instruction where register is inlined to opcode."

	^ self emitX86Inl: opCode reg: reg withRex: true