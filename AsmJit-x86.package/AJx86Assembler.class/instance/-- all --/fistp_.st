fistp: aMemoryOperand
	"Store Integer and Pop
	"
	^ self 
		addInstruction: #fistp
		operands: { aMemoryOperand }