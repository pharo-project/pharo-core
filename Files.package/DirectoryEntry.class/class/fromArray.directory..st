instance creation
fromArray: array directory: aFileDirectoryOrServerDirectory 
	| entryType |
	entryType := (array at: 4) 
		ifTrue: [ DirectoryEntryDirectory ]
		ifFalse: [ DirectoryEntryFile ].
	^ entryType 
		directory: aFileDirectoryOrServerDirectory
		name: (array at: 1)
		creationTime: (array at: 2)
		modificationTime: (array at: 3)
		fileSize: (array at: 5)