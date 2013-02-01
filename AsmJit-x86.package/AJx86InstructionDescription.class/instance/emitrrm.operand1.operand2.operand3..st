emitting
emitrrm: emitter operand1: dst operand2: src operand3: op3

	dst isReg & src isRegMem ifFalse: [ self invalidInstruction ].
	
	self assert: (dst isRegTypeGPB not).
	
	emitter emitX86RM: opCode1
		size: dst size
		regOrCode: dst rm: src