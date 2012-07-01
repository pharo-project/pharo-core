testing
testMethodDefinition
	writer visitMethodDefinition: (RGMethodDefinition realClass: self mockClassA selector: #one) asMCMethodDefinition.
	self assertContentsOf: stream match: self expectedMethodDefinition.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators 