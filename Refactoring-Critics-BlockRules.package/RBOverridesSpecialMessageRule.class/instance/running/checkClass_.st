checkClass: aContext 
	| selectors |
	selectors := aContext selectedClass isMeta 
		ifTrue: [ self metaclassShouldNotOverride ]
		ifFalse: [ self classShouldNotOverride ].
	selectors do: [ :each |
		(aContext selectedClass superclass notNil
			and: [ (aContext selectedClass superclass canUnderstand: each)
			and: [ (aContext selectedClass includesSelector: each) ] ])
				ifTrue: [ result addClass: aContext selectedClass selector: each ] ]