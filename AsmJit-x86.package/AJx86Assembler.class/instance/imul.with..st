instructions generated
imul: aRegister with: aRegisterOrMemoryOrImmediate
	"
	see #imul"
	^ self 
		addInstruction: #imul
		operands: { aRegister . aRegisterOrMemoryOrImmediate }