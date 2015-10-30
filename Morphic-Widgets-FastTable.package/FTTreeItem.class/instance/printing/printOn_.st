printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $[;
		nextPutAll: data asString;
		nextPut: $]