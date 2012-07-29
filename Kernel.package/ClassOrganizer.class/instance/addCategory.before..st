accessing
addCategory: catString before: nextCategory
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance doSilently: [
		super addCategory: catString before: nextCategory].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.