instructions generated
fucomip: aX87Register
	"Unordered Compare Floating Point Values and Set EFLAGS and Pop
	"
	^ self 
		addInstruction: #fucomip
		operands: { aX87Register }