checkClass: aClass
	(aClass instVarNames size >= self variablesCount
		or: [ aClass classVarNames size >= self variablesCount ])
			ifTrue: [ result addClass: aClass ]