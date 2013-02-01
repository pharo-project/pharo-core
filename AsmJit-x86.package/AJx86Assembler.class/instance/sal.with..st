instructions generated
sal: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"
	"
	^ self 
		addInstruction: #sal
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }