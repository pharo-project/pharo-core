storeOn: aStream
	aStream store: self name.
	aStream nextPutAll: ' => '.
	aStream nextPutAll: self class name