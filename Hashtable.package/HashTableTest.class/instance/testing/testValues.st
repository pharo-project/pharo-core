testValues
	| keys |
	keys := (1 to: 100) asOrderedCollection.
	keys do: [ :each |
		table at: each asString put: each ].
	self assert: table values asArray sort = (1 to: 100) asArray