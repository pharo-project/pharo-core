instructions generated
jp: targetLabel
	"Jump short if parity/parity even (PF=1)
	"
	^ self 
		addInstruction: #jp
		operands: { targetLabel }