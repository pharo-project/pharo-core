initialize: aCapacity withDefaultValue: aDefaultValue
	dictionary := Dictionary new: aCapacity.
	orderedKeys := OrderedCollection new: aCapacity.
	defaultValue := aDefaultValue.