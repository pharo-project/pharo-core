setup
tearDown
	self deleteClass.
	self deleteRenamedClass.
	{self unclassifiedCategory. self categoryNameForTemporaryClasses} do: [:category|
		Smalltalk organization removeCategory: category]