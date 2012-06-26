printing
printOn: aStream
	monitor critical: [
		aStream 
			nextPutAll: self class name;
			nextPutAll: ' with ';
			print: items size;
		 	nextPutAll: ' items' ].