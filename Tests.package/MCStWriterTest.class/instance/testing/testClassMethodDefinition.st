testClassMethodDefinition
	writer visitMethodDefinition: (RGMethodDefinition realClass: self mockClassA class selector: #one) asMCMethodDefinition.
	self assertContentsOf: stream match: self expectedClassMethodDefinition.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators 