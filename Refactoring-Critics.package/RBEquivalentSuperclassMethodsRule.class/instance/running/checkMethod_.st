checkMethod: aMethod
	| superclass supertree |
	(self ignoredSelectors includes: aMethod selector)
		ifTrue: [ ^ self ].
	aMethod methodClass superclass notNil ifTrue: [
		superclass := aMethod methodClass superclass 
			whichClassIncludesSelector: aMethod selector.
		superclass notNil ifTrue: [
			supertree := superclass parseTreeFor: aMethod selector.
			(supertree notNil and: [ supertree equalTo: aMethod parseTree exceptForVariables: supertree allDefinedVariables ]) 
				ifTrue: [ result addMethod: aMethod ] ] ]