instructions generated
fadd: aX87Register1 with: aX87Register2
	"
	see #fadd"
	^ self 
		addInstruction: #fadd
		operands: { aX87Register1 . aX87Register2 }