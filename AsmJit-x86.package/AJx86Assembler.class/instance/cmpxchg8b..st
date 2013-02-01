instructions generated
cmpxchg8b: aMemoryOperand
	"Compare and Exchange Bytes
	"
	^ self 
		addInstruction: #cmpxchg8b
		operands: { aMemoryOperand }