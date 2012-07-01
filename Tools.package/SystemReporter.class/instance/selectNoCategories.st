accessing-categories
selectNoCategories
	categoriesSelected removeAll.
	self changed: #categorySelected.
	self updateReport