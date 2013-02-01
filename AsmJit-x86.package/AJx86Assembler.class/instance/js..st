instructions generated
js: targetLabel
	"Jump short if sign (SF=1)
	"
	^ self 
		addInstruction: #js
		operands: { targetLabel }