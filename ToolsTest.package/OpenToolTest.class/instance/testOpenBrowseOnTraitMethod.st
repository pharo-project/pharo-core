test browse
testOpenBrowseOnTraitMethod
	| browser |
	browser := (TPureBehavior>>#localSelectors) browse.
	browser changed.
	browser close.