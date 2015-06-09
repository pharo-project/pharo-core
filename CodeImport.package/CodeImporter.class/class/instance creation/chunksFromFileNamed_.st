chunksFromFileNamed: aFileName
	^ (self fileNamed: aFileName)
			parseChunks;
			codeDeclaration.
