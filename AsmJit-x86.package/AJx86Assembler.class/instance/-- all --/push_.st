push: aSource
	"Push Word, Doubleword or Quadword Onto the Stack
	"
	^ self 
		addInstruction: #push
		operands: { aSource }