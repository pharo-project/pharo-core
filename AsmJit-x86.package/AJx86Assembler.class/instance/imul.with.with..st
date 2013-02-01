instructions generated
imul: aRegister with: aRegisterOrMemory with: anImmediate
	"
	see #imul"
	^ self 
		addInstruction: #imul
		operands: { aRegister . aRegisterOrMemory . anImmediate }