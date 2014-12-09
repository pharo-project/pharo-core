testKeys
	| keys |
	keys := (1 to: 100) asOrderedCollection.
	keys do: [ :each |
		table at: each put: each asString ].
	self assert: table keys asArray sort = (1 to: 100) asArray