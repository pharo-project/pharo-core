printing
printOn: aStream 
	aStream
		nextPut: $!;
		nextPutAll: self displayClassName;
		nextPutAll: ' methodsFor: ''';
		nextPutAll: self protocol;
		nextPutAll: ''' stamp: ';
		print: RBPlatform current changeStamp;
		nextPut: $!;
		cr;
		nextPutAll: (source copyReplaceAll: '!' with: '!!');
		nextPutAll: '! !'