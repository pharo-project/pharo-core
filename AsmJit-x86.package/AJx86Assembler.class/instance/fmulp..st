instructions generated
fmulp: aX87Register
	"Multiply and Pop
	"
	^ self 
		addInstruction: #fmulp
		operands: { aX87Register }