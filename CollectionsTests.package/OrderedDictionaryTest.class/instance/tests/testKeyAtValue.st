testKeyAtValue
	| dictionary |

	dictionary := self dictionaryWithSingleAssociation.
	dictionary defaultValue: self defaultValue.
	self
		assert: (dictionary keyAtValue: self absentValue) = self defaultValue;
		assert: (dictionary keyAtValue: self singleValue) = self singleKey.