testNewFrom
	| dictionaryOne dictionaryTwo dictionaryThree |
	
	(dictionaryOne := self dictionaryClass newFrom: self dictionaryAssociations)
		defaultValue: self defaultValue.
	dictionaryTwo := self dictionaryClass newFrom: dictionaryOne.
	dictionaryThree := self dictionaryClass newFrom: self internalDictionaryWithAssociations.
	self
		assertIsDictionary: dictionaryOne withAssociations: self dictionaryAssociations;
		assert: dictionaryOne defaultValue = self defaultValue;
		assertIsDictionary: dictionaryTwo withAssociations: self dictionaryAssociations;
		assert: dictionaryTwo defaultValue = self defaultValue;
		assertIsDictionary: dictionaryThree includesAll: self dictionaryAssociations;
		deny: dictionaryThree defaultValue = self defaultValue.

	(self dictionaryClass newFrom: dictionaryOne)
		at: self singleKey put: self newValue.
	self deny: (dictionaryOne at: self singleKey) = self newValue.