testRemoveInteger
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table at: each put: each asString ].
	
	0 to: testsize by: 2 do: [ :each |
		self assert: (table includesKey: each).
		table removeKey: each.
		self deny: (table includesKey: each) ].
	
	1 to: testsize by: 2 do: [ :each |
		self assert: (table at: each) = each asString ].