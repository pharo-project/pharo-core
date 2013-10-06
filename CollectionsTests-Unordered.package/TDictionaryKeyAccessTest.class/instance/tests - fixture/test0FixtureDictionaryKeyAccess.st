test0FixtureDictionaryKeyAccess

| collection equals |
self shouldnt: [ self nonEmptyWithoutEqualsValues ] raise: Error.
self deny: self nonEmptyWithoutEqualsValues isEmpty.

equals := true.
collection := self nonEmptyWithoutEqualsValues values.
collection detect: [:each | (collection occurrencesOf: each) > 1  ] ifNone: [ equals := false].
self assert: equals = false.

self shouldnt: [ self valueNotIn ] raise: Error.
self deny: (self nonEmptyWithoutEqualsValues values includes: self valueNotIn )