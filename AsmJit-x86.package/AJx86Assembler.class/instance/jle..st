instructions generated
jle: targetLabel
	"Jump short if less or equal/not greater ((ZF=1) OR (SF!=OF))
	"
	^ self 
		addInstruction: #jle
		operands: { targetLabel }