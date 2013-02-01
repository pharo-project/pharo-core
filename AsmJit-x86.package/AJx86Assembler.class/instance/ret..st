instructions generated
ret: anImmediate
	"
	"
	^ self 
		addInstruction: #ret
		operands: { anImmediate }