private
isUnlocked: attempt

	^ lastUnlock contents
		ifTrue: [ true ]
		ifFalse: [ 
			attempt = self maxAttemptsNumber ifTrue: [ ^ false ].
			self askPasswordForKeyChain: attempt.
			self isUnlocked: (attempt +1) ]