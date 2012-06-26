as yet unclassified
writeOldDefinitions: aCollection
	self addString: (self serializeDefinitions: aCollection) at: 'old/source.', self snapshotWriterClass extension.