fcomp: aX87Register1 with: aX87Register2
	"
	see #fcomp"
	^ self 
		addInstruction: #fcomp
		operands: { aX87Register1 . aX87Register2 }