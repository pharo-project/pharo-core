printing
printOn: aStream

	aStream 
		nextPutAll: self class name;
		nextPut:$(;
		print: x;
		nextPut:$@;
		print: y;
		nextPut:$|;
		print: type;
		nextPut:$)