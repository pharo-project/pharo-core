morphic ui
toggleDiffs
	self repository alwaysStoreDiffs
		ifTrue: [self repository doNotAlwaysStoreDiffs]
		ifFalse: [self repository doAlwaysStoreDiffs]