initialize
type: eventType readFrom: aStream
	| typeAndArg |
	timeStamp := Integer readFrom: aStream.
	aStream skip: 1.
	typeAndArg := Object readFrom: aStream.
	type := typeAndArg first.
	argument := typeAndArg last.