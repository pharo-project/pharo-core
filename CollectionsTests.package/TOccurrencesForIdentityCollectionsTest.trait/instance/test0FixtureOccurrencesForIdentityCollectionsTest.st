tests - fixture
test0FixtureOccurrencesForIdentityCollectionsTest

self shouldnt: [ self identityCollectionWithElementsCopyNotIdentical ] raise: Error.
self identityCollectionWithElementsCopyNotIdentical do: [ :each | self deny: each copy == each ].