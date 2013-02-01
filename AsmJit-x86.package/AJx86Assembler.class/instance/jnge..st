instructions generated
jnge: targetLabel
	"
	"
	^ self 
		addInstruction: #jnge
		operands: { targetLabel }