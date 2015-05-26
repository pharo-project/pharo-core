fcomip: aX87Register
	"Compare Floating Point Values and Set EFLAGS and Pop
	"
	^ self 
		addInstruction: #fcomip
		operands: { aX87Register }