testAddAssoc
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table add: each -> each asString ].
	0 to: testsize do: [ :each |
		self assert: (table at: each) = each asString ].