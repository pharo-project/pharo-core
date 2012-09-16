tests
testRenameTargetExists

	| existingFile fileToRename |
	[
		existingFile := 'existingFile' asFileReference ensureFile.
		fileToRename := 'fileToRename' asFileReference ensureFile.
		self should: [ fileToRename renameTo: existingFile basename ] raise: FileExists ]
		ensure: [
			existingFile delete.
			fileToRename delete ].