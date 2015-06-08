writeAmount: anInteger from: aString startingAt: startIndex
	"Store the next anInteger elements from the given collection."
	writeable ifFalse: [^ self error: 'Cannot write a read-only file'].
	self primWrite: fileHandle from: aString startingAt: startIndex count: anInteger.
	^ aString