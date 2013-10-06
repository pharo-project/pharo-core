test0FixtureDictionaryCopyingTest

| duplicateKey |
self shouldnt: [ self nonEmptyDict ] raise: Error.
self deny: self nonEmptyDict  isEmpty.

self shouldnt: [ self nonEmptyDifferentFromNonEmptyDict ] raise: Error.
self deny: self nonEmptyDifferentFromNonEmptyDict isEmpty.

duplicateKey := true.
self nonEmptyDict keys detect: [ :key | self nonEmptyDifferentFromNonEmptyDict includes: key ] ifNone: [ duplicateKey := false ] .
self assert: duplicateKey  = false.
