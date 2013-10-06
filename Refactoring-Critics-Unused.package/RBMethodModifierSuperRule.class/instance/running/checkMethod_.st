checkMethod: aContext
	| current |
	(aContext superMessages includes: aContext selector)
		ifTrue: [ ^ self ].
	current := aContext selectedClass superclass.
	[ current notNil ] whileTrue: [
		current methodDict at: aContext selector ifPresent: [ :method |
			(method pragmas anySatisfy: [ :each | each keyword = #modifier: and: [ each arguments first = #super ] ])
				ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ] ].
		current := current superclass ]