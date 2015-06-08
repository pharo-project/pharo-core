tearDown

	super tearDown.
	(FileSystem workingDirectory / 'testFile') ensureDelete.