forReferencePrintOn: aStream 
	aStream 
		nextPutAll:'Relative(';
		print: self reference;
		nextPutAll:')'