instructions generated
jg: targetLabel
	"
	"
	^ self 
		addInstruction: #jg
		operands: { targetLabel }