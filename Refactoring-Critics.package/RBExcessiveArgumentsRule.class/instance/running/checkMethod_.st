checkMethod: aContext 
	aContext selector numArgs >= self argumentsCount
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]