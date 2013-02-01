instructions generated
je: targetLabel
	"
	"
	^ self 
		addInstruction: #je
		operands: { targetLabel }