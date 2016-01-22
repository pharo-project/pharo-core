shutDown: isImageQuitting
	isImageQuitting ifTrue: [ self flushAndVoidStdioFiles ]