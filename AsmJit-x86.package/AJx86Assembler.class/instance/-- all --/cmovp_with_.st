cmovp: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - parity/parity even (PF=1)
	"
	^ self 
		addInstruction: #cmovp
		operands: { aRegister . aSourceRegisterOrMemory }