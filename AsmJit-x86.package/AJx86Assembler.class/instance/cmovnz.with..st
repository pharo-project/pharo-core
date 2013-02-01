instructions generated
cmovnz: aRegister with: aSourceRegisterOrMemory
	"Conditional Move - not zero/not equal (ZF=1)
	"
	^ self 
		addInstruction: #cmovnz
		operands: { aRegister . aSourceRegisterOrMemory }