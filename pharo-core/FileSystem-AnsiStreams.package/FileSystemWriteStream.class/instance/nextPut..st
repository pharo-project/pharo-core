writing
nextPut: anObject
	handle at: position put: anObject.
	position := position + 1.
	^ anObject