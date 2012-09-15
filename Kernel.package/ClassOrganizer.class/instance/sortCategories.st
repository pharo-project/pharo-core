accessing
sortCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		super sortCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.