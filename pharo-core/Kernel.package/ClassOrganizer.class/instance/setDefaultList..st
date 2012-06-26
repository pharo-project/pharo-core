accessing
setDefaultList: aSortedCollection
	| oldDict oldCategories |
	oldDict := self elementCategoryDict.
	oldCategories := self categories copy.
	SystemChangeNotifier uniqueInstance doSilently: [
		super setDefaultList: aSortedCollection].
	self notifyOfChangedSelectorsOldDict: oldDict newDict: self elementCategoryDict.
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.