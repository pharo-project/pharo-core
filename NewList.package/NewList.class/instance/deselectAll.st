protocol
deselectAll

	self isMultipleSelection ifFalse: [ ^ self ].
	
	selectedIndexes removeAll.
	self secondSelection: 0.
	selectedIndex contents: 0.
	self changed.