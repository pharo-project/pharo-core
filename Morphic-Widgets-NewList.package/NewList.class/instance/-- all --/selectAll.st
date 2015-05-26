selectAll

	self isMultipleSelection ifFalse: [ ^ self ].
	
	1 to: self listSize do: [: i | selectedIndexes value at: i put: true ].
	selectedIndexes valueChanged.
	self secondSelection: 0.
	selectedIndex value: self listSize.
	self changed.