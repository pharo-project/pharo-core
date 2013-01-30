test browse
testOpenBrowseOnInstalledTraitMethod
	| browser |
	browser := (Behavior>>#localSelectors) browse.
	browser changed.
	browser close.