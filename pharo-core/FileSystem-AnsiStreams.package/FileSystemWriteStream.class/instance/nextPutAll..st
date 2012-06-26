writing
nextPutAll: aCollection
	handle at: position write: aCollection startingAt: 1 count: aCollection size.
	position := position + aCollection size.
	^ aCollection