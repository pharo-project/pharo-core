accessing
removeCategory: cat 
	| r |
	r := super removeCategory: cat.
	SystemChangeNotifier uniqueInstance classCategoryRemoved: cat.
	^ r