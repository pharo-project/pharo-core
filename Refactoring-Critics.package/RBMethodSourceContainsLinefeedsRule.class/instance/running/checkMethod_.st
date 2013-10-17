checkMethod: aContext 
	(aContext sourceCode includes: Character lf) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]