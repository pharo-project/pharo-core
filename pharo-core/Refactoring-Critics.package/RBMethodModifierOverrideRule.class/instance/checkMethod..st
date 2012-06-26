running
checkMethod: aContext
	(aContext compiledMethod pragmas anySatisfy: [ :each | each keyword = #modifier: and: [ each arguments first = #override ] ])
		ifFalse: [ ^ self ].
	(aContext selectedClass superclass isNil)
		ifTrue: [ ^ self ].
	(aContext selectedClass superclass whichClassIncludesSelector: aContext selector) isNil
		ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]