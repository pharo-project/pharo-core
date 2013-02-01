printing
printSelfOn: aStream
	aStream nextPutAll: '@@';
		nextPutAll: name asString 