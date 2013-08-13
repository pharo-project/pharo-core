test - fixture
test0FixtureIterateTest


| res |
self shouldnt: [ self collectionWithoutNilElements ] raise: Error.

self assert: ( self collectionWithoutNilElements  occurrencesOf: nil) = 0.

res := true.
self collectionWithoutNilElements   
	detect: [ :each | (self collectionWithoutNilElements   occurrencesOf: each) > 1 ]
	ifNone: [ res := false ].
self assert: res = false.