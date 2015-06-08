writeAll: aByteArray
	"Store the next anInteger elements from the given collection."
	writeable ifFalse: [^ self error: 'Cannot write a read-only file'].
	self primWrite: fileHandle from: aByteArray startingAt: 1 count: aByteArray basicSize.
	^ aByteArray
