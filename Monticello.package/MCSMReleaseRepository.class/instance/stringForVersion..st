as yet unclassified
stringForVersion: aVersion
	| stream |
	stream := RWBinaryOrTextStream on: String new.
	aVersion fileOutOn: stream.
	^ stream contents