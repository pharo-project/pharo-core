tests - fixture
test0FixtureRemoveByIndexTest

self shouldnt: [self collectionWith5Elements  ] raise: Error.
self assert: self collectionWith5Elements  size = 5.