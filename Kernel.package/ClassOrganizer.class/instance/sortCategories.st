accessing
sortCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance doSilently: [
		super sortCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.