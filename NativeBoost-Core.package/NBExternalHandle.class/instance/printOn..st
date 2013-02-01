printing
printOn: aStream

	aStream nextPutAll: '@ 16r';
		nextPutAll: (self value printStringBase: 16)

