initialize
type: eventType readFrom: aStream
	| x y |
	super type: eventType readFrom: aStream.
	aStream skip: 1.
	x := Integer readFrom: aStream.
	aStream skip: 1.
	y := Integer readFrom: aStream.
	startPoint := x@y.