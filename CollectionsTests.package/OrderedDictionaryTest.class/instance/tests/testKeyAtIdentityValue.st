testKeyAtIdentityValue
	| dictionary value |

	dictionary := self dictionaryWithSingleAssociation.
	value := dictionary at: self singleKey.
	self
		should: [dictionary keyAtIdentityValue: self absentValue] raise: Error;
		should: [dictionary keyAtIdentityValue: value copy] raise: Error;
		assert: (dictionary keyAtValue: value) = self singleKey.