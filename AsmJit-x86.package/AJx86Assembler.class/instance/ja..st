instructions generated
ja: targetLabel
	"
	"
	^ self 
		addInstruction: #ja
		operands: { targetLabel }