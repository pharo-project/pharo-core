tests
testRename

	| file newName tmp originalPwd originalFullName |
	[
		file := (FileLocator imageDirectory / 'oldName') ensureFile.
		originalFullName := file fullName.
		tmp := (FileLocator imageDirectory / 'tmp') ensureDirectory.
		originalPwd := FileSystem disk workingDirectory.
		FileSystem disk changeDirectory: tmp.
		
		file renameTo: 'newName'.
		
		self deny: originalFullName asFile exists.
		self assert: file basename = 'newName'.
		self assert: (originalFullName asFile parent / 'newName') exists		
	] ensure: [
		file delete.
		tmp deleteAll.
		FileSystem disk changeDirectory: originalPwd
	].