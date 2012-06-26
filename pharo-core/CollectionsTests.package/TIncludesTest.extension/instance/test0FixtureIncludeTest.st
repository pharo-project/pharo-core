tests - fixture
test0FixtureIncludeTest
	| elementIn |
	self shouldnt: [ self nonEmpty ]raise: Error.
	self deny: self nonEmpty isEmpty.
	
	self shouldnt: [ self elementNotIn ]raise: Error.
		
	elementIn := true.
	self nonEmpty detect: 
		[ :each | each = self elementNotIn ]
		ifNone: [ elementIn := false ].
	self assert: elementIn = false.
	
	self shouldnt: [ self anotherElementNotIn ]raise: Error.
		
	elementIn := true.
	self nonEmpty detect: 
	[ :each | each = self anotherElementNotIn ]
	ifNone: [ elementIn := false ].
	self assert: elementIn = false.
	
	self shouldnt: [ self empty ] raise: Error.
	self assert: self empty isEmpty.
	
