emitting
emitpush: emitter operand1: op1 operand2: op2 operand3: op3

	"This section is only for immediates, memory/register operands are handled in emitpop:..."
	op1 isImm ifTrue: [
		op1 isInt8 & (op1 relocMode == #RelocNone) ifTrue: [
			emitter emitByte: 16r6A.
			^ emitter emitImmediate: op1 size: 1 ].
		
		emitter emitByte: 16r68.
		^ emitter emitImmediate: op1 size: 4
		].
	
	^ self emitpop: emitter operand1: op1 operand2: op2 operand3: op3
