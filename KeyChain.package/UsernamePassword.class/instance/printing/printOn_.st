printOn: aStream

	super printOn: aStream.
	
	aStream 
		nextPutAll: '(';
		nextPutAll: username printString;
		nextPutAll: ' -> ';
		nextPutAll: password asString;
		nextPutAll: ')';
		yourself