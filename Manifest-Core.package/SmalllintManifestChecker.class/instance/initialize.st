initialize-release
initialize
	super initialize.
	manifestClassCache := Dictionary new.
	allFalsePositiveCache := Dictionary new.
	allTruePositiveCache := Dictionary new.  