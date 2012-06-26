accessing
removeEmptyCategories
	| oldCategories |
	oldCategories := self categories copy.
	SystemChangeNotifier uniqueInstance doSilently: [
		super removeEmptyCategories].
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.