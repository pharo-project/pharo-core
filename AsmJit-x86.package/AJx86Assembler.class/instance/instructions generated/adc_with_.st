adc: aRegisterOrMemoryOperand with: aSource
	"Add with Carry
	"
	^ self 
		addInstruction: #adc
		operands: { aRegisterOrMemoryOperand . aSource }