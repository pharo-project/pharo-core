testAddSymbol
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table at: each asString asSymbol put: each ].
	0 to: testsize do: [ :each |
		self assert: (table at: each asString asSymbol ) = each ].