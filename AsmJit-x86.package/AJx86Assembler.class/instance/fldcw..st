instructions generated
fldcw: aMemoryOperand
	"Load x87 FPU Control Word
	"
	^ self 
		addInstruction: #fldcw
		operands: { aMemoryOperand }