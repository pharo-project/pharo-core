instructions generated
fsub: aMemoryOperand
	"Subtract
	"
	^ self 
		addInstruction: #fsub
		operands: { aMemoryOperand }