code emitting
emittest: emitter operand1: op1 operand2: op2 operand3: op3
	| immSize |
	
	op1 isRegMem & op2 isReg ifTrue: [
		(op1 size = op2 size) ifFalse: [ 
			self error: 'Operands ', op1 asString, ' and ', op2 asString, ' don''t match in size: ', op1 size asString, ' != ', op2 size asString ].
		self upperBankHighByteGuardOp1: op1 op2: op2.
		^ emitter emitX86RM: 16r84 + (op1 isRegTypeGPB not) asBit
			size: op2 size
			regOrCode:  op2 rm: op1
	].

	(op1 isReg and: [ op1 index = 0 and: [ op2 isImm ]]) ifTrue: [ 
		immSize := op1 size min: 4.
		
		op1 is16 ifTrue: [ emitter emitByte: 16r66 "16bit" ].
		emitter emitRexRM: op1 is64 regCode: 0 rm: op1.
		emitter emitByte: 16rA8 + (op1 size ~= 1) asBit.
		^ emitter emitImmediate: op2 size: immSize
	].

	(op1 isRegMem and: [ op2 isImm ]) ifFalse: [ self invalidInstruction ].
	
	immSize := op1 size min: 4.
	(op2 fitsInSize: immSize) ifFalse: [ self invalidInstruction ].
		
	emitter emitSegmentPrefix: op1.
	emitter emitOperandSizeOverridePrefix: op1.
	
	emitter emitByte: 16rF6 + (op1 size ~= 1) asBit.
	op1 emitModRM: emitter code: 0 immSize: immSize.
	emitter emitImmediate: op2 size: immSize
	