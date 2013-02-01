instructions generated
fcmovnu: aX87Register
	"FP Conditional Move - not unordered (PF=0)
	"
	^ self 
		addInstruction: #fcmovnu
		operands: { aX87Register }