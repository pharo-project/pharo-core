testSize
	| keys |
	keys := (1 to: testsize) collect: [ :each | each asString ].
	self assert: table size = 0.
	
	keys do: [ :each |		
		table at: each put: each asNumber.
		self assert: table size = each asNumber. ].
	
	1 to: testsize do: [ :each |
		self assert: table size = testsize.
		self assert: (table at: each asString ) = each ].
	
	testsize to: 1 by: -1 do: [ :each |
		self assert: table size = each. 
		table removeKey: each asString ].
	
	self assert: table size = 0.