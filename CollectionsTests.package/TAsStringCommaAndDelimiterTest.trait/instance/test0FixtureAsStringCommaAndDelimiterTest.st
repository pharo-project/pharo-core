tests - fixture
test0FixtureAsStringCommaAndDelimiterTest
	
	self shouldnt: [self nonEmpty] raise:Error .
	self deny: self nonEmpty isEmpty.
	
	self shouldnt: [self empty] raise:Error .
	self assert: self empty isEmpty.
	
       self shouldnt: [self nonEmpty1Element ] raise:Error .
	self assert: self nonEmpty1Element size=1.