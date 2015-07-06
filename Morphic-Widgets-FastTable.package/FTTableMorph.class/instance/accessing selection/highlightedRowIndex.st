highlightedRowIndex
	^ self highlightedRowIndexes 
		ifNotEmpty: [ :indexes | indexes first ]
		ifEmpty: [ 0 ] 