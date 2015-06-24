highlightRowIndexes: anArray
	anArray = highlightedRowIndexes ifTrue: [ ^ self ].
	
	self basicHighlightRowIndexes: anArray. 
	self moveShowIndexTo: (self highlightedRowIndexes 
		ifNotEmpty: [ self highlightedRowIndexes first ]
		ifEmpty: [ self selectedRowIndex ])