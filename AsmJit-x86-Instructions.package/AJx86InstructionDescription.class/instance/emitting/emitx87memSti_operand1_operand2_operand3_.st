emitx87memSti: emitter operand1: op1 operand2: op2 operand3: op3

	op1 isRegTypeX87 ifTrue: [
		emitter emitByte: (opCode2 bitAnd: 16rFF000000)>>24.
		emitter emitByte: (opCode2 bitAnd: 16r00FF0000)>>16
			+ op1 index.
		^ self 
	].

      " ... fall through to I_X87_MEM ... "

	^ self emitx87mem: emitter operand1: op1 operand2: op2 operand3: op3
