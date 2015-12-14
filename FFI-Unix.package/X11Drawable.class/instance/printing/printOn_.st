printOn: aStream
	aStream
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: self xid printStringHex;
		nextPut: $) 