isUnlocked: attempt

	nextLockTime > DateAndTime now
		ifTrue: [ ^ true ].
	attempt = self maxAttemptsNumber 
		ifTrue: [ ^ false ].
	self askPasswordForKeyChain: attempt.
	^ self isUnlocked: (attempt + 1).