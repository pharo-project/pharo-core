test0FixtureTRemoveTest
	| duplicate |
	self shouldnt: [ self empty ]raise: Error.
	self shouldnt: [ self nonEmptyWithoutEqualElements]  raise:Error.
	self deny: self nonEmptyWithoutEqualElements isEmpty.
	duplicate := true.
	self nonEmptyWithoutEqualElements detect: 
		[:each | (self nonEmptyWithoutEqualElements occurrencesOf: each) > 1] 			
		ifNone: [duplicate := false].
	self assert: duplicate = false.
	
	
	self shouldnt: [ self elementNotIn ] raise: Error.
	self assert: self empty isEmpty.
	self deny: self nonEmptyWithoutEqualElements isEmpty.
	self deny: (self nonEmptyWithoutEqualElements includes: self elementNotIn)