instructions generated
jng: targetLabel
	"
	"
	^ self 
		addInstruction: #jng
		operands: { targetLabel }