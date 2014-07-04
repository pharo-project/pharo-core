testAssociationAt
	| dictionary |

	dictionary := self dictionaryWithSingleAssociation.
	self
		assert: (dictionary associationAt: self absentKey) = nil;
		assert: (dictionary associationAt: self singleKey) = self singleAssociation.