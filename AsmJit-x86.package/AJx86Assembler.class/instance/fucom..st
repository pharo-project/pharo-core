instructions generated
fucom: aX87Register
	"Unordered Compare Floating Point Values
	"
	^ self 
		addInstruction: #fucom
		operands: { aX87Register }