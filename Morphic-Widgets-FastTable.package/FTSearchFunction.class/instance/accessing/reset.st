reset
	searchField ifNil: [ ^ self ].
	self table highlightRowIndexes: #().
	searchField delete.
	searchField := nil.
	text := ''