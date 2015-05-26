cmovnp: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - not parity/parity odd
	"
	^ self 
		addInstruction: #cmovnp
		operands: { aRegister . aSourceRegisterOrMemory }