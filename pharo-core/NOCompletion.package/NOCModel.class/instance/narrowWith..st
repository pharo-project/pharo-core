accessing
narrowWith: aString
	self narrowString: aString.
	self resetEntries.
	self addVariables.
	self nextModel ifNotNilDo: [:nm | nm narrowWith: aString].