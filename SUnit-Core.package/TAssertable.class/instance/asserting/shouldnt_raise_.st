shouldnt: aBlock raise: anExceptionalEvent  
	self validateShouldntException: anExceptionalEvent.
	^self assert: (self executeShould: aBlock inScopeOf: anExceptionalEvent) not
			