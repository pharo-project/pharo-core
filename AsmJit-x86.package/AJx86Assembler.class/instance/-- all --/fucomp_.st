fucomp: aX87Register
	"Unordered Compare Floating Point Values and Pop
	"
	^ self 
		addInstruction: #fucomp
		operands: { aX87Register }