testCopyEmpty
	| dictionary copy |

	(dictionary := self dictionaryWithAssociations)
		defaultValue: self defaultValue.
	copy := dictionary copyEmpty.
	self
		assertDictionary: dictionary doesNotEqual: copy;
		assert: copy isEmpty;
		deny: dictionary isEmpty;
		assert: copy defaultValue = self defaultValue.