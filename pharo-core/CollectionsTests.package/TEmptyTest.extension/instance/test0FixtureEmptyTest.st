tests - fixture
test0FixtureEmptyTest

self shouldnt: [ self nonEmpty ] raise: Error.
self deny: self nonEmpty isEmpty.

self shouldnt: [ self empty ] raise: Error.
self assert: self empty isEmpty.