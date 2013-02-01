instructions generated
jge: targetLabel
	"
	"
	^ self 
		addInstruction: #jge
		operands: { targetLabel }