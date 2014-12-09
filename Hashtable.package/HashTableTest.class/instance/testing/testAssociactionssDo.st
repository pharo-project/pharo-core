testAssociactionssDo
	| keys |
	keys := (1 to: 100) asOrderedCollection.
	keys do: [ :each |
		table at: each put: each ].
	table associationsDo: [ :assoc |
		self assert: assoc key = assoc value.
		self assert: (keys includes: assoc key).
		keys remove: assoc key ifAbsent: [ self fail ] ].
	self assert: keys isEmpty