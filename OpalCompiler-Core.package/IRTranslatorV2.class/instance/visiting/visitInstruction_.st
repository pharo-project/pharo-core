visitInstruction: instr
	self visitNode: instr.
	gen mapBytesTo: instr.