writing
writeMethodPreamble: definition
	stream
		cr;
		nextPut: $!;
		nextPutAll: definition fullClassName;
		nextPutAll: ' methodsFor: ';
		nextPutAll: definition category asString printString;
		nextPutAll: ' stamp: ';
		nextPutAll: definition timeStamp asString printString;
		nextPutAll: '!';
		cr