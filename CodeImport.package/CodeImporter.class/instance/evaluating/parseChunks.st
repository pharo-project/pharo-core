parseChunks
	^ codeDeclarations := (parserClass for: readStream) parseChunks.