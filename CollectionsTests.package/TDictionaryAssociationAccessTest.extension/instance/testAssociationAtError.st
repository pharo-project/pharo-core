tests - dictionary assocition access
testAssociationAtError

| collection keyNotIn |
collection := self nonEmpty.
keyNotIn := self keyNotIn .

self should: [collection associationAt: keyNotIn] raise: Error. 

