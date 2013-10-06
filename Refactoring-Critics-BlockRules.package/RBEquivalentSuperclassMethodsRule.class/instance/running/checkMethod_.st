checkMethod: aContext
	| superclass supertree |
	(self ignoredSelectors includes: aContext selector)
		ifTrue: [ ^ self ].
	aContext selectedClass superclass notNil ifTrue: [
		superclass := aContext selectedClass superclass 
			whichClassIncludesSelector: aContext selector.
		superclass notNil ifTrue: [
			supertree := superclass parseTreeFor: aContext selector.
			(supertree notNil and: [ supertree equalTo: aContext parseTree exceptForVariables: supertree allDefinedVariables ]) 
				ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ] ] ]