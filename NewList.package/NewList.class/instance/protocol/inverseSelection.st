inverseSelection

	self isMultipleSelection ifFalse: [ ^ self ].
	
	1 to: self listSize do: [: i | self toggleAtIndexes: i ].
	self secondSelection: 0.
	selectedIndex contents: self selectedIndexes first.
	self changed.