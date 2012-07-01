accessing
sortCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemChangeNotifier uniqueInstance doSilently: [
		super sortCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.