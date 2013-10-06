fcomi: aX87Register
	"Compare Floating Point Values and Set EFLAGS
	"
	^ self 
		addInstruction: #fcomi
		operands: { aX87Register }