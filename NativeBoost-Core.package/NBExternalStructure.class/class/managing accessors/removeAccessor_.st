removeAccessor: aSelector
	methodDict at: aSelector ifAbsent: [ ^ self ].
	self removeSelectorSilently: aSelector.
	

	