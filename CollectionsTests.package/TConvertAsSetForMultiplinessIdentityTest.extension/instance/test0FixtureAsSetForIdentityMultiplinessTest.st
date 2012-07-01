tests - fixture
test0FixtureAsSetForIdentityMultiplinessTest

	"a collection (of elements for which copy is not identical ) without equal elements:"
	| element res |
	self shouldnt: [ self elementsCopyNonIdenticalWithoutEqualElements ]raise: Error.
	element := self elementsCopyNonIdenticalWithoutEqualElements anyOne.
	self deny: element copy == element .
	
	res := true.
	self elementsCopyNonIdenticalWithoutEqualElements 
		detect: 
			[ :each | 
			(self elementsCopyNonIdenticalWithoutEqualElements occurrencesOf: each) > 1 ]
		ifNone: [ res := false ].
	self assert: res = false
	
	