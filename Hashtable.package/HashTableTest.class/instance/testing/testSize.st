testSize
	self assert: table size = 0.
	
	1 to: testsize do: [ :each |		
		table at: each asString put: each.
		self assert: table size = each. ].
	
	1 to: testsize do: [ :each |
		self assert: table size = testsize.
		self assert: (table at: each asString ) = each ].
	
	testsize to: 1 by: -1 do: [ :each |
		self assert: table size = each. 
		table removeKey: each asString ].
	
	self assert: table size = 0.