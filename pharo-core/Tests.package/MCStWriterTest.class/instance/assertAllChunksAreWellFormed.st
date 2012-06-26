asserting
assertAllChunksAreWellFormed
	stream reset.
	stream 
		untilEnd: [self assertChunkIsWellFormed: stream nextChunk]
		displayingProgress: 'Checking syntax...'