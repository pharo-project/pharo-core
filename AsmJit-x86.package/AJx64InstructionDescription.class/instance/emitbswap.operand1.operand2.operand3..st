code emitting
emitbswap: emitter operand1: op1 operand2: op2 operand3: op3

	op1 isReg ifTrue: [
		emitter emitRexForSingleOperand: op1.
		emitter emitByte: 16r0F.
		^ emitter emitModR: 1 r: op1 code
	].
	self invalidInstruction.