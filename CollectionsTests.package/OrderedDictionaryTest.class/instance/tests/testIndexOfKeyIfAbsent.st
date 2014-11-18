testIndexOfKeyIfAbsent
	| dictionary |

	dictionary := self dictionaryWithAssociations.
	dictionary keys withIndexDo: [:each :i |
		self assert: (dictionary indexOfKey: each ifAbsent: [self newValue]) = i].

	self assert:
		(dictionary
			indexOfKey: self absentKey
			ifAbsent: [self newValue]) = self newValue.