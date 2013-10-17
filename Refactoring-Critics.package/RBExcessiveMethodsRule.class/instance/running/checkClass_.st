checkClass: aContext 
	aContext selectedClass selectors size >= self methodsCount
		ifTrue: [ result addClass: aContext selectedClass ]