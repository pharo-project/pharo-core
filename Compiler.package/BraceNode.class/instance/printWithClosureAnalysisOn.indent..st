printing
printWithClosureAnalysisOn: aStream indent: level

	aStream nextPut: ${.
	1 to: elements size do: 
		[:i | (elements at: i) printWithClosureAnalysisOn: aStream indent: level.
		i < elements size ifTrue: [aStream nextPutAll: '. ']].
	aStream nextPut: $}