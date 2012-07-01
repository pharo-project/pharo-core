private
entryFromNode: anArray fileSystem: aFilesystem path: aPath
	^ FileSystemDirectoryEntry
		fileSystem: aFilesystem
		path: aPath
		creation: (anArray at: 2)
		modification: (anArray at: 3)
		isDir: (anArray at: 4)
		size: (anArray at: 5)