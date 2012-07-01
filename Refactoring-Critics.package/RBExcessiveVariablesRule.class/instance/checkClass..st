running
checkClass: aContext
	(aContext selectedClass instVarNames size >= self variablesCount
		or: [ aContext selectedClass classVarNames size >= self variablesCount ])
			ifTrue: [ result addClass: aContext selectedClass ]