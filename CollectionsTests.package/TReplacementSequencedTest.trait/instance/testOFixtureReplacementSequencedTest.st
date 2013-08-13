tests - fixture
testOFixtureReplacementSequencedTest

	self shouldnt: self nonEmpty   raise: Error.
	self deny: self nonEmpty isEmpty.
	
	self shouldnt: self elementInForReplacement   raise: Error.
	self assert: (self nonEmpty includes: self elementInForReplacement ) .
	
	self shouldnt: self newElement raise: Error.
	
	self shouldnt: self firstIndex  raise: Error.
	self assert: (self firstIndex >= 1 & self firstIndex <= self nonEmpty size).
	
	self shouldnt: self secondIndex   raise: Error.
	self assert: (self secondIndex >= 1 & self secondIndex <= self nonEmpty size).
	
	self assert: self firstIndex <=self secondIndex .
	
	self shouldnt: self replacementCollection   raise: Error.
	
	self shouldnt: self replacementCollectionSameSize    raise: Error.
	self assert: (self secondIndex  - self firstIndex +1)= self replacementCollectionSameSize size
	