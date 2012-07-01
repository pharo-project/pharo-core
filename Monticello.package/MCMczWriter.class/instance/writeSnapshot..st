visiting
writeSnapshot: aSnapshot
	self addString: (self serializeDefinitions: aSnapshot definitions) at: 'snapshot/source.', self snapshotWriterClass extension.
	self addString: (self serializeInBinary: aSnapshot) at: 'snapshot.bin'