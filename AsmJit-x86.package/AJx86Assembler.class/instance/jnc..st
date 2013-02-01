instructions generated
jnc: targetLabel
	"
	"
	^ self 
		addInstruction: #jnc
		operands: { targetLabel }