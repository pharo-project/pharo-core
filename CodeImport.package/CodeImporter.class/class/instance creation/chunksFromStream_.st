chunksFromStream: aStream
	^ (self fileStream: aStream)
			parseChunks;
			codeDeclarations.
