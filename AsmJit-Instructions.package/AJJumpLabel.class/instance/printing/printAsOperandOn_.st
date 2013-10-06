printAsOperandOn: aStream
	
	aStream nextPutAll: '@@';
		nextPutAll: name asString 