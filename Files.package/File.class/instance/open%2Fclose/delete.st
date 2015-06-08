delete

	self primDelete: name.
	self exists
		ifTrue: [ (CannotDeleteFileException new messageText: 'Could not delete the old version of file ' , name) signal ].