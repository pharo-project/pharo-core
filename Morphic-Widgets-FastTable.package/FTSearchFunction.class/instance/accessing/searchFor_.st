searchFor: aString
	| matchingRows |
	matchingRows := self table dataSource searchText: aString.
	self table selectRowIndex: (matchingRows ifEmpty: [ 1 ] ifNotEmpty: [ matchingRows first ]).
	self table highlightRowIndexes: matchingRows