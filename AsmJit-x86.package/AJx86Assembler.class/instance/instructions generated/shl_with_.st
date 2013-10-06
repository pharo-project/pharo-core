shl: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Shift
	"
	^ self 
		addInstruction: #shl
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }