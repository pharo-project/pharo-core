testRemoveSymbol
	0 to: testsize do: [ :each |
		self assert: table size = each.
		table at: each asString asSymbol put: each ].
	
	0 to: testsize by: 2 do: [ :each |
		self assert: (table includesKey: each asString asSymbol).
		table removeKey: each asString asSymbol.
		self deny: (table includesKey: each asString asSymbol) ].
	
	1 to: testsize by: 2 do: [ :each |
		self assert: (table at: each asString asSymbol) = each ].