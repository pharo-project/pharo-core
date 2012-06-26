saving
saveChangesInFileNamed: aString
	| changesFile |
	
	changesFile := aString asFileReference.
	changesFile parent ensureDirectory.
	
	Smalltalk changesFile copyTo: changesFile.
		
	self setMacFileInfoOn:  changesFile fullName.