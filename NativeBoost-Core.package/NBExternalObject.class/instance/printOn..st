printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '( 0x';
		nextPutAll: (handle value printStringBase: 16);
		space;
		nextPut: $)