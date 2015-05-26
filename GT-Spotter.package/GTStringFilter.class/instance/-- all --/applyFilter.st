applyFilter
	self hasQuery ifFalse: [ 
		self applyFilterWithoutQuery.
		^ self allItems. " return the unfiltered items (all) - used for divein (no filtering appied) "  ].
	self applyFilterWithQuery.
	^ self items " return the filtered items only "