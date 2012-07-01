printing
printOn: aStream 
	"Append to the argument, aStream, a sequence of characters 
	that identifies the receiver."
	aStream nextPutAll: self class name;
		 nextPutAll: ' size:';
		 nextPutAll: size asString;
		 nextPutAll: ', calls:';
		 nextPutAll: calls asString;
		 nextPutAll: ', hits:';
		 nextPutAll: hits asString;
		 nextPutAll: ', ratio:'.
	calls = 0
		ifTrue: [aStream nextPutAll: 0 asFloat asString]
		ifFalse: [aStream nextPutAll: (hits / calls) asFloat asString]