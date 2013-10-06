test0FixtureConcatenationTest
	self shouldnt: [ self firstCollection ]raise: Error.
	self deny: self firstCollection isEmpty.
	
	self shouldnt: [ self firstCollection ]raise: Error.
	self deny: self firstCollection isEmpty.
	
	self shouldnt: [ self empty ]raise: Error.
	self assert: self empty isEmpty