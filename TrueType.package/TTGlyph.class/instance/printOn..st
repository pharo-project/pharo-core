printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut:$(;
		print: (contours ifNil: [0] ifNotNil: [contours size]);
		nextPut:$).