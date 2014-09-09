checkMethod: aContext 
	(aContext compiledMethod sourceCode includes: Character lf) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]