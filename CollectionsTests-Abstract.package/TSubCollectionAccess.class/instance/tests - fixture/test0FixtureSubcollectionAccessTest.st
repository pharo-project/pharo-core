test0FixtureSubcollectionAccessTest
	self 
		shouldnt: [ self moreThan3Elements ]
		raise: Error.
	self assert: self moreThan3Elements size > 2