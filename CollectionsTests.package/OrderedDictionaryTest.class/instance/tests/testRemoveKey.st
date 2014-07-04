testRemoveKey
	| dictionary |

	dictionary := self dictionaryWithAssociations.
	dictionary defaultValue: self defaultValue.
	self
		assert: (dictionary removeKey: self absentKey) = self defaultValue;
		assert: (dictionary removeKey: self singleKey) = self singleValue;
		deny: (dictionary includesKey: self singleKey);
		assert: dictionary keys = (self dictionaryKeys copyWithout: self singleKey).