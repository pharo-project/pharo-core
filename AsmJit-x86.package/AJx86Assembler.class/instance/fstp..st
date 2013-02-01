instructions generated
fstp: aMemoryOrX87Register
	"Store Floating Point Value and Pop
	"
	^ self 
		addInstruction: #fstp
		operands: { aMemoryOrX87Register }