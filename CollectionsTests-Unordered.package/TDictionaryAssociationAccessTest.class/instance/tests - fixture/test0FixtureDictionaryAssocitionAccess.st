test0FixtureDictionaryAssocitionAccess

self shouldnt: [self nonEmpty ] raise: Error.
self deny: self nonEmpty isEmpty.

self shouldnt: [self keyNotIn ] raise: Error.
self deny: ( self nonEmpty keys includes: self keyNotIn ).