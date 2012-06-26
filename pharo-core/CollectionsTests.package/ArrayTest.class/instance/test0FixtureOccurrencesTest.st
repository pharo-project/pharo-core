tests - fixture
test0FixtureOccurrencesTest
	self 
		shouldnt: self empty
		raise: Error.
	self assert: self empty isEmpty.
	self 
		shouldnt: self nonEmpty
		raise: Error.
	self deny: self nonEmpty isEmpty.
	self 
		shouldnt: self elementInForOccurrences
		raise: Error.
	self assert: (self nonEmpty includes: self elementInForOccurrences).
	self 
		shouldnt: self elementNotInForOccurrences
		raise: Error.
	self deny: (self nonEmpty includes: self elementNotInForOccurrences)