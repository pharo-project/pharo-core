initialize
type: eventType readFrom: aStream
	| x y |
	type := eventType.
	timeStamp := Integer readFrom: aStream.
	aStream skip: 1.
	x := Integer readFrom: aStream.
	aStream skip: 1.
	y := Integer readFrom: aStream.
	aStream skip: 1.
	buttons := Integer readFrom: aStream.
	position := x@y.
