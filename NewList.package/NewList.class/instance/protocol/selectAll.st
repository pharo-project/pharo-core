selectAll

	self isMultipleSelection ifFalse: [ ^ self ].
	
	1 to: self listSize do: [: i | selectedIndexes contents at: i put: true ].
	selectedIndexes contentsChanged.
	self secondSelection: 0.
	selectedIndex contents: self listSize.
	self changed.