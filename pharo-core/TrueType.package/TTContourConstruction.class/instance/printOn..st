printing
printOn: aStream

	aStream
		nextPutAll: self class name;
		nextPut:$(;
		print: points size;
		"space;
		print: self type;"
		nextPut:$)