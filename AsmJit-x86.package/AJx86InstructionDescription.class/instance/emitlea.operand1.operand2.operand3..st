emitting
emitlea: emitter operand1: op1 operand2: op2 operand3: op3

	(op1 isReg and: [ op2 isMem ]) 
		ifFalse: [ self error: 'LEA: Expected Reg and Mem but got ', op1 asString, ' and ', op2 asString ].
	
	emitter emitX86RM: 16r8D
		size: op1 size
		regOrCode: op1
		rm: op2