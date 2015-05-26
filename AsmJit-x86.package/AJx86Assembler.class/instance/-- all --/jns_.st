jns: targetLabel
	"Jump short if not sign (SF=0)
	"
	^ self 
		addInstruction: #jns
		operands: { targetLabel }