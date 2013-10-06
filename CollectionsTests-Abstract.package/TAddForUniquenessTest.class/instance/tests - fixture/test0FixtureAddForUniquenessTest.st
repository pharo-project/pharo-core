test0FixtureAddForUniquenessTest

	self shouldnt: [ self element ] raise: Error.
	self shouldnt: [ self collectionWithElement ]raise: Error.
	self assert: (self collectionWithElement includes: self element).
	self shouldnt: [ self collectionWithoutElement ]raise: Error.
	self deny: (self collectionWithoutElement includes: self element)