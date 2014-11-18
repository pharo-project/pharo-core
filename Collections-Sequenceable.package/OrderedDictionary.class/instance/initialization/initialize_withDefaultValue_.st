initialize: aCapacity withDefaultValue: aDefaultValue
	dictionary := self dictionaryClass new: aCapacity.
	orderedKeys := Array new: aCapacity.
	defaultValue := aDefaultValue.