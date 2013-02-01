instructions generated
fsubr: aX87Register1 with: aX87Register2
	"
	see #fsubr"
	^ self 
		addInstruction: #fsubr
		operands: { aX87Register1 . aX87Register2 }