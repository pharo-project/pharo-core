testing
testMethodDefinitionWithBangs
	writer visitMethodDefinition: (RGMethodDefinition 
									realClass: self class
									selector: #methodWithBangs) asMCMethodDefinition.	
	self assertContentsOf: stream match: self expectedMethodDefinitionWithBangs.
	stream reset.
	self assert: stream nextChunk isAllSeparators.
	self assertChunkIsWellFormed: stream nextChunk.
	self assertMethodChunkIsWellFormed: stream nextChunk.
	self assert: stream nextChunk isAllSeparators 