emitting
emitshldShrd: emitter operand1: dst operand2: src1 operand3: src2

	(src2 isImm or: [ src2 isRegTypeGPB and: [ src2 index = 1 "cl"]]) ifFalse: [ self invalidInstruction ].
	
	dst isRegMem & src1 isReg ifFalse: [ self invalidInstruction ].
	self assert: (dst size = src1 size).
	
	emitter emitX86RM: opCode1 + src2 isReg asBit
		size: src1 size
		regOrCode: src1 rm: dst immSize: src2 isImm asBit.
		
	src2 isImm ifTrue: [
		emitter emitImmediate: src2 size: 1
		]