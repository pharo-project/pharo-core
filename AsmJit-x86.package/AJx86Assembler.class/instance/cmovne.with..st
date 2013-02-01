instructions generated
cmovne: aRegister with: aSourceRegisterOrMemory
	"
	"
	^ self 
		addInstruction: #cmovne
		operands: { aRegister . aSourceRegisterOrMemory }