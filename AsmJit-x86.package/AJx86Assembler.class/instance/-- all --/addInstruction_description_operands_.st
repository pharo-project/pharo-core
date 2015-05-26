addInstruction: sel description: description operands: operands

	^ self addInstruction: (self newInstruction: sel description: description operands: operands)