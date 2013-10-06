ror: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Rotate
	"
	^ self 
		addInstruction: #ror
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }