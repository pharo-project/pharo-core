shouldnt: aBlock raise: anExceptionalEvent description: aString  
	self validateShouldntException: anExceptionalEvent.
	^self
		assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent) not
		description: aString
			