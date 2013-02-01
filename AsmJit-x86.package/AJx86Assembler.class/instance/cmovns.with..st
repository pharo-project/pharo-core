instructions generated
cmovns: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - not sign (SF=0)
	"
	^ self 
		addInstruction: #cmovns
		operands: { aRegister . aSourceRegisterOrMemory }