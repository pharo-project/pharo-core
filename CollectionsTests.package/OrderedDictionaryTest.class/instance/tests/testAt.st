testAt
	| dictionary |

	dictionary := self dictionaryWithSingleAssociation.
	dictionary defaultValue: self defaultValue.
	self
		assert: (dictionary at: self absentKey) = self defaultValue;
		assert: (dictionary at: self singleKey) = self singleValue.