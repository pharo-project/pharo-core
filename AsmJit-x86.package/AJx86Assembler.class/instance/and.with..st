instructions generated
and: aRegisterOrMemoryOperand with: aSource
	"Logical AND
	"
	^ self 
		addInstruction: #and
		operands: { aRegisterOrMemoryOperand . aSource }