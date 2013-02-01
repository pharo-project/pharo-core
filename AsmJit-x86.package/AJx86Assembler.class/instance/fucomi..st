instructions generated
fucomi: aX87Register
	"Unordered Compare Floating Point Values and Set EFLAGS
	"
	^ self 
		addInstruction: #fucomi
		operands: { aX87Register }