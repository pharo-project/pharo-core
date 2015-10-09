searchFor: aStringOrText
	| founds |
	founds := self table dataSource searchText: aStringOrText asString.
	self table
		selectRowIndex: (founds ifEmpty: [ 1 ] ifNotEmpty: [ founds first ]);
		highlightRowIndexes: founds.
	^ founds notEmpty