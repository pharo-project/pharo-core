testAddEqualStrings
	| key1 key2 value1 value2 |
	key1 := String newFrom: 'testme!'.
	key2 := String newFrom: 'testme!'.
	
	self assert: key1 ~~ key2.
	
	value1 := 1.
	value2 := 2.
	
	table at: key1 put: value1.
	table at: key2 put: value2.
	
	self assert: (table at: key1) = value1.
	self assert: (table at: key2) = value2.