testAddString
	| keys |
	keys := (0 to: testsize) collect: [ :each | each asString ].
	keys do: [ :each |
		self assert: table size = each asNumber.
		table at: each put: each asNumber ].
	keys := (0 to: testsize) collect: [ :each | each asString ].
	keys do: [ :each |
		self assert: (table at: each ) = each asNumber ].