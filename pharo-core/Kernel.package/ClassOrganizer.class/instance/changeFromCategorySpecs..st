accessing
changeFromCategorySpecs: categorySpecs
	| oldDict oldCategories |
	oldDict := self elementCategoryDict.
	oldCategories := self categories copy.
	SystemChangeNotifier uniqueInstance doSilently: [
		super changeFromCategorySpecs: categorySpecs].
	self notifyOfChangedSelectorsOldDict: oldDict newDict: self elementCategoryDict.
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.