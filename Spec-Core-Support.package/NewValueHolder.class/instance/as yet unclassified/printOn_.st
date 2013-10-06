printOn: aStream
	super printOn: aStream.
	aStream 
		nextPutAll: '[ '; 
		print: self contents;
		nextPutAll: ' ]'