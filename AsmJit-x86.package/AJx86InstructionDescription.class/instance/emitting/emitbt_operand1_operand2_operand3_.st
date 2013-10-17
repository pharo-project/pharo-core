emitbt: emitter operand1: dst operand2: src operand3: op3

	dst isRegMem
		ifFalse: [ self error: 'Expected register or memory but got ', dst asString ].
	
	(dst isReg and: [ dst is8 ])
		ifTrue: [ self error: '8 bit register ', dst asString, ' not supported for bit test operations'].
	
 	src isReg ifTrue: [
		^ emitter emitX86RM: opCode1
			size: src size
			regOrCode: src
			rm: dst
	].

	src isImm ifTrue: [
		src isInt8 
			ifFalse: [ self error: 'Expected imm8 but got ', src size asString, ' immediate.' ].
		emitter emitX86RM: opCode2
			size: dst size
			regOrCode: opCodeR
			rm: dst
			immSize: 1.
		^ emitter emitImmediate: src size: 1
	].

	self invalidInstruction
	