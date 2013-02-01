instruction list
addInstruction: sel operands: operands

	^ self 
		addInstruction: sel 
		description: (self instructionDesciptions at: sel)
		operands: operands 