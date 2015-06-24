showSearchField
	self table addMorphFront: self searchField.
	self searchField bounds: ((self table bottomRight - self searchField extent)  
		extent: self searchField extent)