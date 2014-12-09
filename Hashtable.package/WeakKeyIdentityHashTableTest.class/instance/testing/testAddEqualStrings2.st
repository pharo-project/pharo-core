testAddEqualStrings2
	| firstKeys secondsKeys |
	firstKeys := (1 to: testsize) collect: [ :each | each asString].
	secondsKeys := (1 to: testsize) collect: [ :each | each asString].
	
	firstKeys do: [ :each |
		table at: each put: each asNumber ].
	
	secondsKeys do: [ :each |
		table at: each put: each asNumber negated ].
	
	firstKeys do: [ :each |
		self assert: (table at: each) = each asNumber ].
	
	secondsKeys do: [ :each |
		self assert: (table at: each) = each asNumber negated ].