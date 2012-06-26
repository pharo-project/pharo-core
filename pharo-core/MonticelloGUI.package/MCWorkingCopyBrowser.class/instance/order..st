morphic ui
order: anInteger
	self class order: (order := anInteger).
	self changed: #workingCopyList; changed: #workingCopyTree