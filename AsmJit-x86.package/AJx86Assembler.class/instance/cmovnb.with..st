instructions generated
cmovnb: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - not below/above or equal/not carry (CF=0)
	"
	^ self 
		addInstruction: #cmovnb
		operands: { aRegister . aSourceRegisterOrMemory }