flushChangesFile
	
	self changesFileStream ifNotNil: [:f | f flush ]