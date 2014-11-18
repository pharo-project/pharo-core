testCopy
	| dictionary copy |

	(dictionary := self dictionaryWithAssociations)
		defaultValue: self defaultValue.
	copy := dictionary copy.
	self
		assertDictionary: dictionary equals: copy;
		deny: dictionary == copy;
		deny: dictionary dictionary == copy dictionary;
		deny: dictionary orderedKeys == copy orderedKeys;
		assert: copy defaultValue = dictionary defaultValue.

	dictionary at: self singleKey put: self newValue.
	self deny: (copy at: self singleKey) = self newValue.