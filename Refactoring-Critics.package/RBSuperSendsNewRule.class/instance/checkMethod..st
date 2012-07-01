running
checkMethod: aContext 
	aContext selectedClass isMeta 
		ifTrue: [ ^ self ].
	(matcher executeTree: aContext parseTree initialAnswer: false) 
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]