accessing
addCategory: catString before: nextCategory
	| oldCategories |
	oldCategories := self categories copy.
	SystemChangeNotifier uniqueInstance doSilently: [
		super addCategory: catString before: nextCategory].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.