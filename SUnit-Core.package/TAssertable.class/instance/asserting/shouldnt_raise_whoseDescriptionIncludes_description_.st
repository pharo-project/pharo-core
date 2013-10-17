shouldnt: aBlock raise: anExceptionalEvent whoseDescriptionIncludes: subString description: aString  
	self validateShouldntException: anExceptionalEvent.
	^self 
		assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent withDescriptionContaining: subString) not
		description: aString
