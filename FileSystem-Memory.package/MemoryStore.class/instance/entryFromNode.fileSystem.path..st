private
entryFromNode: entry fileSystem: aFilesystem path: aPath
	self flag: #todo. "directly use real date objects everywhere"
	^ FileSystemDirectoryEntry
		fileSystem: aFilesystem
		path: aPath
		creation: entry creationTime asSeconds
		modification: entry modificationTime asSeconds
		isDir: entry isDirectory
		size: entry size