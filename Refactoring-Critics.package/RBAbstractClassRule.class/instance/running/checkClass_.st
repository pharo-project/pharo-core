checkClass: aContext 
	(aContext selectedClass whichSelectorsReferTo: subclassResponsibilitySymbol) ifNotEmpty: 
		[ aContext selectedClass allCallsOn ifNotEmpty: [ result addClass: aContext selectedClass ] ]