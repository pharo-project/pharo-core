tests - dictionary including
testIncludesKey

| collection keyIn keyNotIn |

collection := self nonEmpty .
keyIn := collection keys anyOne.
keyNotIn := self keyNotInNonEmpty. 

self assert: ( collection includesKey: keyIn ).
self deny: ( collection includesKey: keyNotIn ).