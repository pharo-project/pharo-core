checkMethod: aMethod
	(self ignoredSelectors includes: aMethod selector)
		ifTrue: [ ^ self ].
	aMethod methodClass superclass ifNotNilDo: [ :superclass |
		(superclass lookupSelector: aMethod selector)
			ifNotNilDo: [ :overridenMethod |
				aMethod ast = overridenMethod ast
					ifTrue: [ result addMethod: aMethod ] ] ]