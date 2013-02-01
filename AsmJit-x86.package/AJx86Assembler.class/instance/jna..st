instructions generated
jna: targetLabel
	"
	"
	^ self 
		addInstruction: #jna
		operands: { targetLabel }