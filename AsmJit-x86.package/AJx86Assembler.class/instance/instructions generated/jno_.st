jno: targetLabel
	"Jump short if not overflow (OF=0)
	"
	^ self 
		addInstruction: #jno
		operands: { targetLabel }