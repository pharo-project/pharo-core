testAddAndModifyString
	| key value |
	key := String newFrom: 'testme!'.
	value := 1.
	table at: key put: value.
	
	self assert: (table at: key) = value.
	
	key at: 1 put: $x.
	
	self assert: (table at: key) = value
	