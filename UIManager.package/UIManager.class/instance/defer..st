ui process
defer: aBlock
	" Evaluate the given Block in the UI thread as soon as there is nothing scheduled.
	The default implementation directly evaluates the block"
	aBlock value.
	