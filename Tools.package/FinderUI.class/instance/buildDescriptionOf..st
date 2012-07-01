text areas behavior
buildDescriptionOf: aClass

	| stream |
	stream := WriteStream on: ''.
	stream 
		nextPutAll: aClass definition.
	aClass hasComment
		ifTrue: [
			stream
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: Character cr;
				nextPutAll: aClass comment].

	^ stream contents