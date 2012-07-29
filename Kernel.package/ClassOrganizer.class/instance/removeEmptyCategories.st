accessing
removeEmptyCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance doSilently: [
		super removeEmptyCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.