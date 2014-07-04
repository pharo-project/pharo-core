testKeyAtIdentityValueIfAbsent
	| dictionary value |

	dictionary := self dictionaryWithSingleAssociation.
	value := dictionary at: self singleKey.
	self
		assert: (dictionary keyAtIdentityValue: self absentValue ifAbsent: [self absentKey]) = self absentKey;
		assert: (dictionary keyAtIdentityValue: value copy ifAbsent: [self absentKey]) = self absentKey;
		assert: (dictionary keyAtValue: value) = self singleKey.