on: aStream 
	buffer := WriteStream on: (String new: 60).
	stream := aStream.
	classificationTable := self class classificationTable.
	comments := OrderedCollection new