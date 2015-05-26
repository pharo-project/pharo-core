setUp
	originalReference := FileSystem memory / #foo / #bar.
	fileSystem := originalReference relativeFileSystem.
	store := fileSystem store.