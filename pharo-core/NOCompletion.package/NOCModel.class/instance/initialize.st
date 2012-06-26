accessing
initialize
	super initialize.
	self contract.
	table := NOCCompletionTable default.
	ctable := NOCCompletionTable classes.