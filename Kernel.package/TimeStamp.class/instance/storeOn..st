squeak protocol
storeOn: aStream 

	aStream 
		nextPut: $';
		print: self;
		nextPut: $';
		nextPutAll: ' asTimeStamp'