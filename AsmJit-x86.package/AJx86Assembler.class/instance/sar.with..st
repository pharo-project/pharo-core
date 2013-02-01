instructions generated
sar: aDestinationRegisterOrMemory with: aRegisterOrImmediate
	"Shift
	"
	^ self 
		addInstruction: #sar
		operands: { aDestinationRegisterOrMemory . aRegisterOrImmediate }