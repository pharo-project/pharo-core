initializeOwner: aMenuItem keyText: aString
	self initialize.
	owner := aMenuItem.
	keyText := self class expand: aString