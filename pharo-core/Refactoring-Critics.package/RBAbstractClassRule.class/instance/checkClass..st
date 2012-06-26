running
checkClass: aContext 
	(aContext selectedClass whichSelectorsReferTo: subclassResponsibilitySymbol) isEmpty ifFalse: 
		[ (aContext uses: (Smalltalk globals 
				associationAt: aContext selectedClass name
				ifAbsent: [ nil ])) ifTrue: [ result addClass: aContext selectedClass ] ]