checkClass: aClass 
	| sels className |
	className := aClass theNonMetaClass name.
	sels := aClass whichSelectorsReferTo: (Smalltalk globals associationAt: className).
	sels do: 
		[ :each | 
		result 
			addClass: aClass
			selector: each ].
	sels isEmpty ifFalse: [ result addSearchString: className ]