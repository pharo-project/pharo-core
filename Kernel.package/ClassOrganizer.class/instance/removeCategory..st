accessing
removeCategory: cat 
	| oldCategories |
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance doSilently: [
		super removeCategory: cat].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.