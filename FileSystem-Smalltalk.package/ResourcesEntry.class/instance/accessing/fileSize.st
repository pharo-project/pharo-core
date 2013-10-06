fileSize
	fileSystem ifNil: [ ^ 0 ].
	^ fileSystem root entry size.