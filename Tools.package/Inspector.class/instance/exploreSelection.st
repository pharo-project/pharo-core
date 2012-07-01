menu commands
exploreSelection

	self selectionIndex = 0 ifTrue: [^ self changed: #flash].
	^ self selection explore