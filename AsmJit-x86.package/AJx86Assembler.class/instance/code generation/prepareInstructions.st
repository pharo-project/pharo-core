prepareInstructions
	"A final step before generating machine code: 
	prepare instructions by injecting a stack alignment
	and reifying jump labels.

	Prepared instructions will contain machine code, ready for use
	"
	instructions := stackManager analyzeInstructions: instructions assembler: self.
	instructions emitCodeAtOffset: 0 assembler: self.

	^ instructions