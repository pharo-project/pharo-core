fcmove: aX87Register
	"FP Conditional Move - equal (ZF=1)
	"
	^ self 
		addInstruction: #fcmove
		operands: { aX87Register }