initialize
type: eventType readFrom: aStream
	type := eventType.
	timeStamp := Integer readFrom: aStream.
	aStream skip: 1.
	buttons := Integer readFrom: aStream.
	aStream skip: 1.
	keyValue := Integer readFrom: aStream.