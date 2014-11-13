buildWindow 	

	|window|
	window := super buildWindow.
	self repositoryListChanged.
	^window