tests - fixture
test0FixtureBeginsEndsWithTest

	self shouldnt: [self nonEmpty ] raise: Error.
	self deny: self nonEmpty isEmpty.
	self assert: self nonEmpty size>1.
	
	self shouldnt: [self empty ] raise: Error.
	self assert: self empty isEmpty.