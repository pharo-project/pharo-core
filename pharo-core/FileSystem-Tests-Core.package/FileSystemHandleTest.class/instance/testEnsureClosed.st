tests
testEnsureClosed
	
	filesystem := self createFileSystem.
	reference := filesystem * 'plonk'.
	handle := reference openWritable: true.
	
	handle ensureClosed.
	self deny: handle isOpen.
	
	self shouldnt: [ handle ensureClosed ] raise: Error.
	
	reference delete. 
	handle reference exists ifTrue: [self error].
	self shouldnt: [ handle ensureClosed ] raise: Error.