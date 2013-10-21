applyTo: aNautilus

	super applyTo: aNautilus.
	aNautilus ui ifNotNil: [ :interface |
		interface pendingText: self sourceCode ].

	aNautilus removeFromHistory: self