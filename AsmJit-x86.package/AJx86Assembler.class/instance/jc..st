instructions generated
jc: targetLabel
	"
	"
	^ self 
		addInstruction: #jc
		operands: { targetLabel }