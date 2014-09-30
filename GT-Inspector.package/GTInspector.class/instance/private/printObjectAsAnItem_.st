printObjectAsAnItem: anObject 
	|  stream  |
	stream := String new writeStream.
	stream
		nextPutAll: (anObject class name first isVowel 
				ifTrue: [ 'an ' ]
				ifFalse: [ 'a ' ]);
		nextPutAll: anObject class name.
	stream 
		nextPutAll: ' (';
		nextPutAll: (GTObjectPrinter new asTruncatedTextFrom: anObject) asString;
		nextPut: $).
	^ stream contents