showing
printOn: aStream
	aStream nextPutAll: (self printStringFor: key) asString asUppercase.