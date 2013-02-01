instructions generated
fadd: aMemoryOperand
	"Add
	"
	^ self 
		addInstruction: #fadd
		operands: { aMemoryOperand }