printing
printWithClosureAnalysisOn: aStream indent: level

	aStream nextPutAll: '^ '. 
	expr printWithClosureAnalysisOn: aStream indent: level.
	expr printCommentOn: aStream indent: level