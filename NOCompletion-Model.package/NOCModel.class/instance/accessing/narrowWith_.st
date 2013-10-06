narrowWith: aString
	self narrowString: aString.
	self loadEntries.
	self nextModel ifNotNilDo: [:nm | nm narrowWith: aString].