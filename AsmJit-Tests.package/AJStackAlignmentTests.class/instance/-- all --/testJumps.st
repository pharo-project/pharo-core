testJumps

	| asm callInfo |
	
	asm := self newAssembler.
	asm noStackFrame.
	
	asm jmp: #foo;
		nop;
		nop;
		nop;
		nop;
		nop;
		nop;
		nop;
		nop;
	label: #foo.
	
	^ asm generatedCode.