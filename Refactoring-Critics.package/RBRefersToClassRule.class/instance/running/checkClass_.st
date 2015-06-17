checkClass: aClass 
	| sels className |
	className := aClass theNonMetaClass name.
	sels := aClass whichSelectorsReferTo: (aClass environment associationAt: className).
	sels do: 
		[ :each | 
		result 
			addClass: aClass
			selector: each ].
	sels isEmpty ifFalse: [ result addSearchString: className ]