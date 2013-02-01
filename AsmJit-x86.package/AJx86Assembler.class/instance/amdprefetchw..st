instructions generated
amdprefetchw: aMemoryOperand
	"
	"
	^ self 
		addInstruction: #amdprefetchw
		operands: { aMemoryOperand }