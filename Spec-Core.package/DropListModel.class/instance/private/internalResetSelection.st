internalResetSelection

	selectionHolder reset.
	self getList isEmpty not
		ifTrue: [ self silentlySetSelectedIndex: 1 ]