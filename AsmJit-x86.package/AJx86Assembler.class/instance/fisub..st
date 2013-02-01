instructions generated
fisub: aMemoryOperand
	"Subtract
	"
	^ self 
		addInstruction: #fisub
		operands: { aMemoryOperand }