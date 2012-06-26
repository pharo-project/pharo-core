tests - fixture
test0IndexAccessingTest
	self 
		shouldnt: [ self accessCollection ]
		raise: Error.
	self assert: self accessCollection size = 5.
	self 
		shouldnt: [ self subCollectionNotIn ]
		raise: Error.
	self subCollectionNotIn 
		detect: [ :each | (self accessCollection includes: each) not ]
		ifNone: [ self assert: false ].
	self 
		shouldnt: [ self elementNotInForIndexAccessing ]
		raise: Error.
	self deny: (self accessCollection includes: self elementNotInForIndexAccessing).
	self 
		shouldnt: [ self elementInForIndexAccessing ]
		raise: Error.
	self assert: (self accessCollection includes: self elementInForIndexAccessing).
	self 
		shouldnt: [ self collectionOfFloat ]
		raise: Error.
	self collectionOfFloat do: [ :each | self deny: each class = SmallInteger ]