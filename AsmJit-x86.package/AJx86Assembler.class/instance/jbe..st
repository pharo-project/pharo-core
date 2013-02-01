instructions generated
jbe: targetLabel
	"Jump short if below or equal/not above (CF=1 AND ZF=1)
	"
	^ self 
		addInstruction: #jbe
		operands: { targetLabel }