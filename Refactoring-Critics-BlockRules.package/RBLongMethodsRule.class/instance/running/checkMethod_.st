checkMethod: aContext 
	(matcher executeTree: aContext parseTree initialAnswer: 0) >= self longMethodSize 
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]