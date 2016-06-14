nextPc: currentByte
	"Answer the pc of the next bytecode following the current one, given the current bytecode.
	 Skips the extension bytecodes."
	
	| newPC |
	newPC :=  pc + (self method encoderClass bytecodeSize: currentByte).
	[ newPC <= self method size and: [self method encoderClass isExtension: (self method at: newPC)] ] whileTrue:
		[ newPC := newPC + 2 ].
	^ newPC