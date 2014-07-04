testAtPut
	| dictionary keyToUpdate |

	dictionary := self emptyDictionary.
	self assert:
		(self dictionaryAssociations allSatisfy: [:each |
			(dictionary at: each key put: each value) = each value]).
	self assert: dictionary associations = self dictionaryAssociations.

	keyToUpdate := self dictionaryKeys anyOne.
	self
		assert: (dictionary at: keyToUpdate put: self newValue) = self newValue;
		assert:
			(dictionary associations =
				(self dictionaryAssociations collect: [:each |
					each key = keyToUpdate
						ifTrue: [keyToUpdate -> self newValue]
						ifFalse: [each]])).