initialize
type: eventType readFrom: aStream
	super type: eventType readFrom: aStream.
	aStream skip: 1.
	whichButton := Integer readFrom: aStream.