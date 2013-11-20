fromMethodTimeStamp: aString
	| stream |
	stream := aString readStream.
	stream
		skipSeparators;
		skipTo: Character space.
	^self readFrom: stream.