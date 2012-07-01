conversion
printOn: aStream

	aStream nextPutAll: 'FilePath('''.
	aStream nextPutAll: squeakPathName.
	aStream nextPutAll: ''')'.
