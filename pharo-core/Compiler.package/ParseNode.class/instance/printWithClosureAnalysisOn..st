printing
printWithClosureAnalysisOn: aStream 
	"Refer to the comment in Object|printOn:."

	aStream nextPut: ${.
	self printWithClosureAnalysisOn: aStream indent: 0.
	aStream nextPut: $}.