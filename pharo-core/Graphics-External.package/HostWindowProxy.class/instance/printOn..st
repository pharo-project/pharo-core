printing
printOn: aStream
	super printOn:aStream.
	aStream nextPutAll: ' (windowIndex '.
	windowHandle printOn: aStream.
	aStream nextPut: $)