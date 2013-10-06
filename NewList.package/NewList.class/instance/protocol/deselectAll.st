deselectAll

	selectedIndex contents: 0.

	self isMultipleSelection 
		ifTrue: [
			selectedIndexes removeAll.
			self secondSelection: 0 ].
			
	self changed.