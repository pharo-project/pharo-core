next: n into: aBuffer
	"Return a string with the next n characters of the filestream in it."
	| readBuffer read |
	readBuffer := aBuffer.
	self onPositionDo: [ read := (file readInto: readBuffer startingAt: 1 count: n) ].
	^read = n 
		ifTrue: [ readBuffer ]
		ifFalse: [ readBuffer copyFrom: 1 to: read ]