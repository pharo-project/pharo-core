checkMethod: aContext 
	(matcher executeTree: aContext compiledMethod parseTree initialAnswer: 0) >= self longMethodSize 
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]