testRemoveString
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table at: each asString put: each ].
	
	0 to: testsize by: 2 do: [ :each |
		self assert: (table includesKey: each asString).
		table removeKey: each asString.
		self deny: (table includesKey: each asString) ].
	
	1 to: testsize by: 2 do: [ :each |
		self assert: (table at: each asString) = each ].