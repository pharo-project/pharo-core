instructions generated
fst: aMemoryOrX87Register
	"Store Floating Point Value
	"
	^ self 
		addInstruction: #fst
		operands: { aMemoryOrX87Register }