printing
printOn: aStream
	aStream nextPutAll: self class name; nextPutAll:' ( '.
	self lengthsAndValuesDo:[:runLength :runValue |
		aStream
			nextPutAll:' (';
			print: runLength;
			space;
			print: runValue;
			nextPut:$).
	].
	aStream nextPutAll:' )'.