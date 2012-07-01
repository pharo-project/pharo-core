utilities
uploadFileNamed: aFilename to: baseUrl user: user passwd: passwd

	| fileContents remoteFilename |
	remoteFilename := (baseUrl endsWith: '/')
		ifTrue: [baseUrl , '/' , aFilename]
		ifFalse: [baseUrl , aFilename].
	fileContents := (StandardFileStream readOnlyFileNamed: aFilename) contentsOfEntireFile.
	HTTPSocket httpPut: fileContents to: remoteFilename user: user passwd: passwd