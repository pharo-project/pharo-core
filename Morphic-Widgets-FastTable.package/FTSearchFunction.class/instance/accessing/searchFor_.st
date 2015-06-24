searchFor: aString
	self table highlightRowIndexes: (self table dataSource searchText: aString)
		