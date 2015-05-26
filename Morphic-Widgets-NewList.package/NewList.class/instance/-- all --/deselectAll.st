deselectAll

	selectedIndex value: 0.

	self isMultipleSelection 
		ifTrue: [
			selectedIndexes removeAll.
			self secondSelection: 0 ].
			
	self changed.