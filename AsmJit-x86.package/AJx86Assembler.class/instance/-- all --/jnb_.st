jnb: targetLabel
	"Jump short if not below/above or equal/not carry (CF=0)
	"
	^ self 
		addInstruction: #jnb
		operands: { targetLabel }