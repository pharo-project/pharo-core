tests - fixture
test0FixtureRequirementsOfTGrowableTest
	self 
		shouldnt: [ self empty ]
		raise: Exception.
	self 
		shouldnt: [ self nonEmpty ]
		raise: Exception.
	self 
		shouldnt: [ self element ]
		raise: Exception.
	self 
		shouldnt: [ self elementNotInForOccurrences ]
		raise: Exception.
	self assert: self empty isEmpty.
	self deny: self nonEmpty isEmpty.
	self assert: (self nonEmpty includes: self element).
	self deny: (self nonEmpty includes: self elementNotInForOccurrences)