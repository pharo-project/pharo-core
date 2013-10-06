fcmovu: aX87Register
	"FP Conditional Move - unordered (PF=1)
	"
	^ self 
		addInstruction: #fcmovu
		operands: { aX87Register }