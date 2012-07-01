printing
storeOn: aStream
	aStream nextPutAll: 'unknown'.
	aStream space.
	self timeStamp storeOn: aStream.
	aStream space.
	{type. argument} storeOn: aStream.