whichSelectorsRead: aString
	
	| index |
	index := self
		instVarIndexFor: aString
		ifAbsent: [ ^ IdentitySet new ].
	^ self selectors select: [ :each |
		(self compiledMethodAt: each)
			readsField: index ]