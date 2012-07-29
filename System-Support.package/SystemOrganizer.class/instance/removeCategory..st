accessing
removeCategory: cat 
	| r |
	r := super removeCategory: cat.
	SystemAnnouncer uniqueInstance classCategoryRemoved: cat.
	^ r