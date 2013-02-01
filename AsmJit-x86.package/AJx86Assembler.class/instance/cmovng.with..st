instructions generated
cmovng: aRegister with: aSourceRegisterOrMemory
	"
	"
	^ self 
		addInstruction: #cmovng
		operands: { aRegister . aSourceRegisterOrMemory }