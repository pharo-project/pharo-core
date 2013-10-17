checkMethod: aContext 
	(aContext selectedClass organization categoryOfElement: aContext selector) = Protocol unclassified ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]