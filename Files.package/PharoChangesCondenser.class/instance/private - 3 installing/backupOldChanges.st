backupOldChanges
	| changesFile |
	
	changesFile := self originalFile.
	changesFile moveTo: (changesFile , 'bak') nextVersion.
	