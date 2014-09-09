checkMethod: aContext 
	vars := aContext instVarNames.
	(matcher 
		executeTree: aContext compiledMethod parseTree
		initialAnswer: false) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector.
		result addSearchString: varName ]