printing
printOn: aStream
	| handleHex |
	super printOn: aStream.
	handle isNil ifTrue: [ ^aStream nextPutAll: '<nil>' ].
	handleHex := (handle unsignedLongAt: 1 bigEndian: Smalltalk isBigEndian) printStringHex.
	aStream nextPutAll: '<0x'; nextPutAll: handleHex; nextPut: $>.