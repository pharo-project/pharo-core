testAddString
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table at: each asString put: each ].
	0 to: testsize do: [ :each |
		self assert: (table at: each asString ) = each ].