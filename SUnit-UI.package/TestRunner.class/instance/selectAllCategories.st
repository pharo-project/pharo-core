accessing-categories
selectAllCategories
	categoriesSelected := categories asSet.
	self changed: #allSelections; changed: #categorySelected; updateClasses