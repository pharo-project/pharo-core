printing
printWithClosureAnalysisOn: aStream indent: level
	aStream nextPut: $[.
	blockExtent ifNotNil: [aStream print: blockExtent].
	self printWithClosureAnalysisArgumentsOn: aStream indent: level.
	self printWithClosureAnalysisTemporariesOn: aStream indent: level.
	self printWithClosureAnalysisStatementsOn: aStream indent: level.
	aStream nextPut: $]