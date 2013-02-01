instructions generated
fcom: aMemoryOperand
	"Compare Real
	"
	^ self 
		addInstruction: #fcom
		operands: { aMemoryOperand }