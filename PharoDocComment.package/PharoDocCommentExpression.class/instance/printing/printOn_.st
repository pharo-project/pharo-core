printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '('.
	aStream nextPutAll: self expression. 
	aStream nextPutAll: ')'.