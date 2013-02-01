instructions generated
jnbe: targetLabel
	"Jump short if not below or equal/above (CF=0 AND ZF=0)
	"
	^ self 
		addInstruction: #jnbe
		operands: { targetLabel }