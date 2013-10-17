emitpop: emitter operand1: op1 operand2: op2 operand3: op3

	op1 isReg ifTrue: [
		(op1 isRegTypeGPW | (emitter isGPNRegister: op1)) 
			ifFalse: [ self error: 'Invalid register given: ', op1 asString].
		^ emitter emitX86Inl: opCode1 reg: op1.
		].
	
	op1 isMem ifFalse: [ self invalidInstruction ].
	emitter emitX86RM: opCode2 size: op1 size regOrCode: opCodeR rm: op1
