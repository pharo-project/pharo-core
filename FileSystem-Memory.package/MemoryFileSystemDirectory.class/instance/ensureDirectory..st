creation
ensureDirectory: aDirectoryName
	^ self at: aDirectoryName put: (MemoryFileSystemDirectory named: aDirectoryName)