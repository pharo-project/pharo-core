printing
printOn: aStream

	aStream nextPutAll: 'DirectoryEntry: '.
	reference ifNotNilDo: [:ref | aStream nextPutAll: reference printString].