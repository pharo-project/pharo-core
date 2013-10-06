whichSelectorsReallyRead: aString
	"This is a modified version of #whichSelectorsRead: that does exclude the writers."
	
	| index |
	index := self
		instVarIndexFor: aString
		ifAbsent: [ ^ IdentitySet new ].
	^ self selectors select: [ :each |
		(self compiledMethodAt: each)
			readsField: index ]