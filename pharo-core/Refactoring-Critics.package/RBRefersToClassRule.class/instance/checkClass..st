running
checkClass: aContext 
	| sels className |
	className := aContext selectedClass theNonMetaClass name.
	sels := aContext selectedClass whichSelectorsReferTo: (Smalltalk globals associationAt: className).
	sels do: 
		[ :each | 
		result 
			addClass: aContext selectedClass
			selector: each ].
	sels isEmpty ifFalse: [ result addSearchString: className ]