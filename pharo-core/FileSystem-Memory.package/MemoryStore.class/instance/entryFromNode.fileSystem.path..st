private
entryFromNode: anObject fileSystem: aFilesystem path: aPath
	^ FileSystemDirectoryEntry
		fileSystem: aFilesystem
		path: aPath
		creation: 0
		modification: 0
		isDir: anObject isDictionary
		size:
			(anObject isDictionary
				ifTrue: [ 0 ]
				ifFalse: [ anObject size ])