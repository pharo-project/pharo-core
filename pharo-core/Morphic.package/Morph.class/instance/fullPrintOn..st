printing
fullPrintOn: aStream

	aStream nextPutAll: self class name , ' newBounds: (';
		print: bounds;
		nextPutAll: ') color: ' , (self colorString: color)