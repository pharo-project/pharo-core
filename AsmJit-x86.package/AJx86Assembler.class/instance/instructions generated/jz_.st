jz: targetLabel
	"Jump short if zero/equal (ZF=0)
	"
	^ self 
		addInstruction: #jz
		operands: { targetLabel }