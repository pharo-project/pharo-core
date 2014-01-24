initializeWidgets

	protocols := self newList.
	label := self newLabel.
	
	label text: 'Protocol'.
	
	self focusOrder add: protocols