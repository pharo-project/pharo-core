running
execute
	self model goferHasVersions
		ifTrue: [ self model load ].
	self updateRepositories.
	self updateCategories