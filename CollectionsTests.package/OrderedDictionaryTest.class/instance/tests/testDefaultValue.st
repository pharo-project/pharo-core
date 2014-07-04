testDefaultValue
	| dictionary |
	
	dictionary :=  self dictionaryClass new: 10 withDefaultValue: self defaultValue.
	self assert: dictionary defaultValue = self defaultValue.

	dictionary := self dictionaryClass defaultValue: self defaultValue.
	self assert: dictionary defaultValue = self defaultValue.

	dictionary defaultValue: self newDefaultValue.
	self assert: dictionary defaultValue = self newDefaultValue.

	dictionary := (self dictionaryClass newFrom: dictionary).
	self
		assert: dictionary defaultValue = self newDefaultValue;
		assert: dictionary copy defaultValue = self newDefaultValue;
		assert: dictionary copyEmpty defaultValue = self newDefaultValue.