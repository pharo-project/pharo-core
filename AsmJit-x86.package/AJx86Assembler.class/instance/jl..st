instructions generated
jl: targetLabel
	"Jump short if less/not greater (SF!=OF)
	"
	^ self 
		addInstruction: #jl
		operands: { targetLabel }