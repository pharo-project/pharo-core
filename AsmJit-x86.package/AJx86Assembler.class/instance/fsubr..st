instructions generated
fsubr: aMemoryOperand
	"Reverse Subtract
	"
	^ self 
		addInstruction: #fsubr
		operands: { aMemoryOperand }