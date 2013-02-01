printing
printOn: stream
	super printOn: stream.
	stream
		nextPut: $(;
		print: identifier.
	strict
		ifTrue: [ 
			stream
				space;
				nextPutAll: 'strict' ].
	stream nextPut: $)