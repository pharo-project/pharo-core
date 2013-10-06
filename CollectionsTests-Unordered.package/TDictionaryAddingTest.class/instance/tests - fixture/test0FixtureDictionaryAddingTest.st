test0FixtureDictionaryAddingTest


self shouldnt: [ self nonEmptyDict ]raise: Error.
self deny: self nonEmptyDict isEmpty.

self shouldnt: [ self associationWithKeyNotInToAdd ]raise: Error.
self deny: (self nonEmptyDict keys includes: self associationWithKeyNotInToAdd key ).

self shouldnt: [ self associationWithKeyAlreadyInToAdd  ]raise: Error.
self assert: (self nonEmptyDict keys includes: self associationWithKeyAlreadyInToAdd key ).
