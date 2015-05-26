should: aBlock raise: anExceptionalEvent whoseDescriptionDoesNotInclude: subString description: aString 
	^self assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent withDescriptionNotContaining: subString)
		description: aString
