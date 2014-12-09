testAddSymbol
	| keys |
	keys := (0 to: testsize) collect: [ :each | each asString asSymbol ].
	keys do: [ :each |
		self assert: table size = each asNumber.
		table at: each put: each asNumber ].
	keys do: [ :each |
		self assert: (table at: each) = each asNumber ].