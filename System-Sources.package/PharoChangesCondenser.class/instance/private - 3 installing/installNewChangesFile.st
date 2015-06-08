installNewChangesFile
	
	(SourceFiles at: self fileIndex) close.
	self updateQuitPosition.
	stream flush close.
	
	self backupOldChanges.
	
	self originalFile ensureDelete.
	newChangesFile moveTo: self originalFile .
	
	Smalltalk openSourceFiles.