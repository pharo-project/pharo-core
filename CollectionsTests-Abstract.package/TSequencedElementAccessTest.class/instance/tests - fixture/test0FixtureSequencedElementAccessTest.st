test0FixtureSequencedElementAccessTest
	self 
		shouldnt: [ self moreThan4Elements ]
		raise: Error.
	self assert: self moreThan4Elements size >= 4.
	self 
		shouldnt: [ self subCollectionNotIn ]
		raise: Error.
	self subCollectionNotIn 
		detect: [ :each | (self moreThan4Elements includes: each) not ]
		ifNone: [ self assert: false ].
	self 
		shouldnt: [ self elementNotInForElementAccessing ]
		raise: Error.
	self deny: (self moreThan4Elements includes: self elementNotInForElementAccessing).
	self 
		shouldnt: [ self elementInForElementAccessing ]
		raise: Error.
	self assert: (self moreThan4Elements includes: self elementInForElementAccessing)