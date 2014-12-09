printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' key: ';
		nextPutAll: self key asString;
		nextPutAll: ' value: ';
		nextPutAll: self value asString.