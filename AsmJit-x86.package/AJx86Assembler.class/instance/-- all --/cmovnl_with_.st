cmovnl: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - not less/greater or equal (SF=OF)
	"
	^ self 
		addInstruction: #cmovnl
		operands: { aRegister . aSourceRegisterOrMemory }