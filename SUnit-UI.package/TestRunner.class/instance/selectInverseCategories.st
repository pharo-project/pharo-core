accessing-categories
selectInverseCategories
	categoriesSelected := categories asSet 
		removeAll: categoriesSelected;
		yourself.
	self changed: #allSelections; changed: #categorySelected; updateClasses