mouseMove: event
	event isDraggingEvent ifFalse: [ ^ self ].
	(self container rowIndexContainingPoint: event position) 
		ifNotNil: [ :rowIndex | 
			self basicHighlightRowIndexes: { rowIndex }.
			self refresh ]