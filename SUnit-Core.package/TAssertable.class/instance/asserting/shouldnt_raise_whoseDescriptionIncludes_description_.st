shouldnt: aBlock raise: anExceptionalEvent whoseDescriptionIncludes: subString description: aString  
	 
	^self 
		assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent withDescriptionContaining: subString) not
		description: aString
