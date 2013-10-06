test0FixtureDictionaryElementAccess

| in |
self shouldnt: [ self nonEmpty ] raise: Error.
self deny: self nonEmpty isEmpty.

self shouldnt: [ self keyNotIn ] raise: Error.
in := true.
self nonEmpty keys detect: [ :key | key = self keyNotIn  ] ifNone: [ in := false].
self assert: in = false.