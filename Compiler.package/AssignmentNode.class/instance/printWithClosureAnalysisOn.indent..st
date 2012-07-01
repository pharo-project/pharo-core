printing
printWithClosureAnalysisOn: aStream indent: level 
	variable printWithClosureAnalysisOn: aStream indent: level.
	aStream nextPutAll: ' := '.
	value printWithClosureAnalysisOn: aStream indent: level + 2