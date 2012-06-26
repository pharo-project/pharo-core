accessing
addCategory: newCategory
	| r |
	r := super addCategory: newCategory.
	SystemChangeNotifier uniqueInstance classCategoryAdded: newCategory.
	^ r