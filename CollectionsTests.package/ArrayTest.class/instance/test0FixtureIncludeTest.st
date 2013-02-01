tests - fixture
test0FixtureIncludeTest
	| anElementIn |
	self 
		shouldnt: [ self nonEmpty ]
		raise: Error.
	self deny: self nonEmpty isEmpty.
	self 
		shouldnt: [ self elementNotIn ]
		raise: Error.
	anElementIn := true.
	self nonEmpty 
		detect: [ :each | each = self elementNotIn ]
		ifNone: [ anElementIn := false ].
	self assert: anElementIn = false.
	self 
		shouldnt: [ self anotherElementNotIn ]
		raise: Error.
	anElementIn := true.
	self nonEmpty 
		detect: [ :each | each = self anotherElementNotIn ]
		ifNone: [ anElementIn := false ].
	self assert: anElementIn = false.
	self 
		shouldnt: [ self collection ]
		raise: Error.
	self 
		shouldnt: [ self empty ]
		raise: Error.
	self assert: self empty isEmpty.
	self 
		shouldnt: [ self collectionOfFloat ]
		raise: Error.
	self collectionOfFloat do: [ :each | self assert: each class = Float ].
	self 
		shouldnt: [ self elementInForIncludesTest ]
		raise: Error.
	anElementIn := true.
	self nonEmpty 
		detect: [ :each | each = self elementInForIncludesTest ]
		ifNone: [ anElementIn := false ].
	self assert: anElementIn = true