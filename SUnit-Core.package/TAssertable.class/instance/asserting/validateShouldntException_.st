validateShouldntException: anExceptionalEvent

	(anExceptionalEvent == Error 
	or: [ anExceptionalEvent == Exception ])
		ifTrue: [ Error signal: 'Use #shouldnt:raise: only with specific errors, or evaluate the given expression directly' ].