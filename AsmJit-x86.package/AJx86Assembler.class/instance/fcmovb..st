instructions generated
fcmovb: aX87Register
	"FP Conditional Move - below (CF=1)
	"
	^ self 
		addInstruction: #fcmovb
		operands: { aX87Register }