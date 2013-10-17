shutDown: quitting

	quitting ifTrue: [ self flushAndVoidStdioFiles ]