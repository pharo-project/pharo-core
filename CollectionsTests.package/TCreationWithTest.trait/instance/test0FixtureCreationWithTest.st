tests - fixture
test0FixtureCreationWithTest

self shouldnt: [ self collectionMoreThan5Elements ] raise: Error.
self assert: self collectionMoreThan5Elements size >= 5.