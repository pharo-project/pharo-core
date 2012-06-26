testing
testClassDefinitionA
	writer visitClassDefinition: (self mockClassA asClassDefinition).
	self assertContentsOf: stream match: self expectedClassDefinitionA.
	stream reset.
	2 timesRepeat: [self assertChunkIsWellFormed: stream nextChunk]