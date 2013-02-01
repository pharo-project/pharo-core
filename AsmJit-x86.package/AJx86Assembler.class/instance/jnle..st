instructions generated
jnle: targetLabel
	"Jump short if not less nor equal/greater ((ZF=0) AND (SF=OF))
	"
	^ self 
		addInstruction: #jnle
		operands: { targetLabel }