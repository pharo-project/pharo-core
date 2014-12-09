testRemoveString
	| key keys |
	keys := (0 to: testsize) collect: [ :each | each asString ].
	keys do: [ :each |
		self assert: table size = each asNumber.
		table at: each put: each asNumber ].
	
	0 to: testsize by: 2 do: [ :each |
		key := keys at: each + 1.
		self assert: (table includesKey: key).
		table removeKey: key.
		self deny: (table includesKey: key) ].
	
	1 to: testsize by: 2 do: [ :each |
		key := keys at: each + 1.
		self assert: (table at: key) = each asNumber ].