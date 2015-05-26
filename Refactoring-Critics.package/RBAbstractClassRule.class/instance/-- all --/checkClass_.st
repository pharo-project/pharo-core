checkClass: aClass 
	(aClass whichSelectorsReferTo: subclassResponsibilitySymbol) ifNotEmpty: 
		[ aClass allCallsOn ifNotEmpty: [ result addClass: aClass ] ]