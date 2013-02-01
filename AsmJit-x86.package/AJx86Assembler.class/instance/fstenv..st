instructions generated
fstenv: aMemoryOperand
	"Store x87 FPU Environment
	"
	^ self 
		addInstruction: #fstenv
		operands: { aMemoryOperand }