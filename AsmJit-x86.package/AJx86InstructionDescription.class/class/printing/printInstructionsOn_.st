printInstructionsOn: aStream
	" AJInstructionDescription printInstructionsOn: (FileStream newFileNamed: 'asm.st'). "
	
	aStream nextPutAll: '#(' ; cr.
	
	self instructions keys asSortedCollection do: [:aname | 
		| instr |
		
		instr := instructions at: aname.
		
		instr printOn: aStream.
		aStream cr.
	].
	aStream cr;
		nextPut: $); cr
