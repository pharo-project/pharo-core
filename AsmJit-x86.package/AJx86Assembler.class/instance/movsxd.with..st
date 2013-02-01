instructions generated
movsxd: aDestinationRegister with: aSourceRegisterOrMemory
	"Move with Sign-Extension
	"
	^ self 
		addInstruction: #movsxd
		operands: { aDestinationRegister . aSourceRegisterOrMemory }