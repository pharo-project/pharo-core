printing
printOn: aStream
	aStream nextPutAll: 'TTCFont(';
		nextPutAll: self familyName; space;
		print: self pointSize; space;
		nextPutAll: self subfamilyName;
		nextPut: $)