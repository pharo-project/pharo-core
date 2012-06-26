printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' oldItem: ';
		print: oldItem.