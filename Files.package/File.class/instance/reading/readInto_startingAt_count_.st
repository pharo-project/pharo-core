readInto: byteArray startingAt: startIndex count: count
	"Read up to n bytes into the given byteArray.
	Return the number of bytes actually read."
	^(self primRead: fileHandle into: byteArray startingAt: startIndex count: count).