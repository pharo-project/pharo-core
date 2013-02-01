emitting
emitx87addp: emitter operand1: op1 operand2: op2 operand3: op3

	| opp |
	opp := op1 ifNil:  [ AJx87Register new code: 1 ].
	
	opp isRegTypeX87 ifTrue: [
		emitter emitByte: (opCode1 bitAnd: 16rFF00)>>8.
		emitter emitByte: (opCode1 bitAnd: 16rFF)
			+ opp index.
		^ self 
	].

	^self emitx87sti: emitter operand1: opp operand2: op2 operand3: op3
	