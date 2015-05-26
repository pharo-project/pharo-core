jnl: targetLabel
	"Jump short if not less/greater or equal (SF=OF)
	"
	^ self 
		addInstruction: #jnl
		operands: { targetLabel }