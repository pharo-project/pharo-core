accessing
setDefaultList: aSortedCollection
	| oldDict oldCategories |
	oldDict := self elementCategoryDict.
	oldCategories := self categories copy.
	SystemAnnouncer uniqueInstance doSilently: [
		super setDefaultList: aSortedCollection].
	self notifyOfChangedSelectorsOldDict: oldDict newDict: self elementCategoryDict.
	self notifyOfChangedCategoriesFrom: oldCategories to: self categories.