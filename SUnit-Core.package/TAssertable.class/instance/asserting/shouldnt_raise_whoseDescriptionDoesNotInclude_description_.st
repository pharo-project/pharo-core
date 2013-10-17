shouldnt: aBlock raise: anExceptionalEvent whoseDescriptionDoesNotInclude: subString description: aString 
	self validateShouldntException: anExceptionalEvent.
	^self
		assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent withDescriptionNotContaining: subString) not
		description: aString
