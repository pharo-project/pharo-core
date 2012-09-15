accessing
removeEmptyCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super removeEmptyCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.