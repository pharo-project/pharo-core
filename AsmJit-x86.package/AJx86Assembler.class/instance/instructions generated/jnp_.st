jnp: targetLabel
	"Jump short if not parity/parity odd
	"
	^ self 
		addInstruction: #jnp
		operands: { targetLabel }