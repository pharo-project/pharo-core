testKeyAtIndex
	| dictionary |

	(dictionary := self emptyDictionary)
		defaultValue: self defaultValue.
	self
		assert: (dictionary keyAtIndex: 0) = self defaultValue;
		assert: (dictionary keyAtIndex: 1) = self defaultValue.

	(dictionary := self dictionaryWithAssociations)
		defaultValue: self defaultValue.
	self dictionaryKeys withIndexDo: [:each :i |
		self assert: (dictionary keyAtIndex: i) = each].
	self
		assert: (dictionary keyAtIndex: 0) = self defaultValue;
		assert: (dictionary keyAtIndex: dictionary size + 1) = self defaultValue.