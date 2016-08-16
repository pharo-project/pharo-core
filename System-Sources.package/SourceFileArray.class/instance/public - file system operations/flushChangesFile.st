flushChangesFile
	
	flushChanges ifFalse: [ ^ self ].
	
	self changesFileStream ifNotNil: [:f | f flush ]