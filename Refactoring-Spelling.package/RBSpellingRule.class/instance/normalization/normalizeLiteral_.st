normalizeLiteral: aLiteral
	| stream |
	stream := WriteStream on: String new.
	self normalizeLiteral: aLiteral on: stream.
	^ stream contents