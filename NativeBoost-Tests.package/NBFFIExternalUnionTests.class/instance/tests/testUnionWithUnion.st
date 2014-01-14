testUnionWithUnion
	|u1 u2|
	u1 := NBTestUnionWithUnion new.
	u2 := NBTestUnionIntSize new.
	
	u2 y: 300.
	
	self assert: u1 union x = 0.
	self assert: u1 union y = 0.
	self assert: u1 union field = Character null.
	
	u1 union: u2.
	self assert: u1 union x = 300.
	self assert: u1 union y = 300.	
	self assert: u1 union field = $,.