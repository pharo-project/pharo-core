tests
testRenameTargetExists

	| existingFile fileToRename |
	[
		existingFile := 'existingFile' asFile ensureFile.
		fileToRename := 'fileToRename' asFile ensureFile.
		self should: [ fileToRename renameTo: existingFile fullName ] raise: FileExists ]
		ensure: [
			existingFile delete.
			fileToRename delete ].