instruction list
decorateWith: annotation during: aBlock

	self addInstruction: (AJInstructionDecoration new start annotation: annotation).
	level := level + 1.
	aBlock ensure: [
		level := level - 1.
		self addInstruction: (AJInstructionDecoration new end annotation: annotation)
	]	
