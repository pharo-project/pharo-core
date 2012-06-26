accessing-categories
selectNoCategories
	categoriesSelected := Set new.
	self changed: #allSelections; changed: #categorySelected; updateClasses