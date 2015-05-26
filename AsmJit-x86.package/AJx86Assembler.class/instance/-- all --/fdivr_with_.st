fdivr: aX87Register1 with: aX87Register2
	"
	see #fdivr"
	^ self 
		addInstruction: #fdivr
		operands: { aX87Register1 . aX87Register2 }