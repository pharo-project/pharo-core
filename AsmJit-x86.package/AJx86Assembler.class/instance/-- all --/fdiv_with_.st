fdiv: aX87Register1 with: aX87Register2
	"
	see #fdiv"
	^ self 
		addInstruction: #fdiv
		operands: { aX87Register1 . aX87Register2 }