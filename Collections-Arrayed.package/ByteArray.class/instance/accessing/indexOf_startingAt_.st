indexOf: anInteger startingAt: start

	(anInteger isInteger and: [
		anInteger >= 0 and: [
		anInteger <= 255 ] ]) ifFalse: [ ^0 ].
	^ByteString indexOfAscii: anInteger inString: self startingAt: start