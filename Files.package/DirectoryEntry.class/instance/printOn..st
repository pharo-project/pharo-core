access
printOn: aStream 
	super printOn: aStream.
	aStream
		space ;
		nextPutAll: self name