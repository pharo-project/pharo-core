serializing
serializeDefinitions: aCollection
	| writer s |
	s := RWBinaryOrTextStream on: String new.
	writer := self snapshotWriterClass on: s.
	writer writeDefinitions: aCollection.
	^ s contents