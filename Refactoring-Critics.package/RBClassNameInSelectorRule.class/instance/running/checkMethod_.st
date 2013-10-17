checkMethod: aContext 
	(aContext selectedClass isMeta and: 
		[ (aContext selector 
			indexOfSubCollection: aContext selectedClass soleInstance name
			startingAt: 1) > 0 ]) ifTrue: 
		[ result 
			addClass: aContext selectedClass
			selector: aContext selector ]