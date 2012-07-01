printing
storeOn: aStream

	aStream nextPutAll: type.
	aStream space.
	self timeStamp storeOn: aStream.
	aStream space.
	buttons storeOn: aStream.
	aStream space.
	keyValue storeOn: aStream.
