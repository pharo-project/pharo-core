instructions generated
jnae: targetLabel
	"
	"
	^ self 
		addInstruction: #jnae
		operands: { targetLabel }