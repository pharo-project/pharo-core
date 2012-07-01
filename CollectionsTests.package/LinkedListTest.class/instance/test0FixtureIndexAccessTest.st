tests - fixture
test0FixtureIndexAccessTest
	| res |
	self 
		shouldnt: [ self collectionMoreThan1NoDuplicates ]
		raise: Error.
	self assert: self collectionMoreThan1NoDuplicates size = 5.
	res := true.
	self collectionMoreThan1NoDuplicates 
		detect: [ :each | (self collectionMoreThan1NoDuplicates occurrencesOf: each) > 1 ]
		ifNone: [ res := false ].
	self assert: res = false.
	self 
		shouldnt: [ self elementInForIndexAccessing ]
		raise: Error.
	self assert: (self collectionMoreThan1NoDuplicates includes: self elementInForIndexAccessing).
	self 
		shouldnt: [ self elementNotInForIndexAccessing ]
		raise: Error.
	self deny: (self collectionMoreThan1NoDuplicates includes: self elementNotInForIndexAccessing)