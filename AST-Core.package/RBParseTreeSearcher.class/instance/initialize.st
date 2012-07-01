initialize-release
initialize
	super initialize.
	context := RBSmallDictionary new.
	searches := OrderedCollection new.
	argumentSearches := OrderedCollection new: 0.
	answer := nil