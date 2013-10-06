fcom: aX87Register1 with: aX87Register2
	"
	see #fcom"
	^ self 
		addInstruction: #fcom
		operands: { aX87Register1 . aX87Register2 }