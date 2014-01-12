validateInvariantWith: assertable
	keyIndex keysAndValuesDo: [ :key :link |
		assertable assert: link value key = key ].
	self keysAndValuesDo: [ :key :value |
		| link |
		link := keyIndex at: key.
		assertable assert: link value value = value.
		assertable assert: link value key = key ]