test0FixtureIterateSequencedReadableTest

	| res |
	
	self shouldnt: self nonEmptyMoreThan1Element  raise: Error.
	self assert: self nonEmptyMoreThan1Element  size > 1.
	
	
	self shouldnt: self empty raise: Error.
	self assert: self empty isEmpty .
	
	res := true.
	self nonEmptyMoreThan1Element    
	detect: [ :each | (self nonEmptyMoreThan1Element    occurrencesOf: each) > 1 ]
	ifNone: [ res := false ].
	self assert: res = false.