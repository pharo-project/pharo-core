printOn: aStream 
	aStream
		nextPutAll: self displayClassName;
		nextPutAll: ' classComment: ';
		print: (self comment copyReplaceAll: '!' with: '!!');
		nextPutAll: ' stamp: ';
		print: (RBPlatform current changeStamp);
		nextPutAll: '!'