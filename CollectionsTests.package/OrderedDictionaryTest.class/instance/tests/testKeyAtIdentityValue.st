testKeyAtIdentityValue
	| dictionary value |

	dictionary := self dictionaryWithSingleAssociation.
	dictionary defaultValue: self defaultValue.
	value := dictionary at: self singleKey.
	self
		assert: (dictionary keyAtIdentityValue: self absentValue) = self defaultValue;
		assert: (dictionary keyAtIdentityValue: value copy) = self defaultValue;
		assert: (dictionary keyAtValue: value) = self singleKey.