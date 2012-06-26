printing
printOn: aStream

	self printEventKindOn: aStream.
	aStream
		nextPutAll: ' Event for item: ';
		print: self item;
		nextPutAll: ' of kind: ';
		print: self itemKind