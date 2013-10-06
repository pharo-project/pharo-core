changeSearchedText: aString 
	self searchedText: aString.
	self applyFilters.
	^ true 