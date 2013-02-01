emitting code
emitAlignmentIfNeeded
	| alignment |
	
	self needsAlignment
		ifTrue: [ ^ self emitAlignment ].
		
	self emitCleanup