printing
printWithClosureAnalysisOn: aStream indent: level precedence: p

	aStream nextPut: $(.
	self printWithClosureAnalysisOn: aStream indent: level.
	aStream nextPut: $)