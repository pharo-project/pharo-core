read: n into: readBuffer startingAt: startIndex
	"Read n bytes into the given string.
	Return aString or a partial copy if less than
	n elements have been read."
	|read|
	read := (self readInto: readBuffer startingAt: startIndex count: n).
	^read = n 
		ifTrue: [ readBuffer ]
		ifFalse: [ readBuffer copyFrom: 1 to: startIndex + read - 1 ]