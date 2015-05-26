fsubp: aX87Register
	"Subtract and Pop
	"
	^ self 
		addInstruction: #fsubp
		operands: { aX87Register }