cmovs: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - sign (SF=1)
	"
	^ self 
		addInstruction: #cmovs
		operands: { aRegister . aSourceRegisterOrMemory }