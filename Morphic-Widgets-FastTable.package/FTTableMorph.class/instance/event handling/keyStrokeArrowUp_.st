keyStrokeArrowUp: event
	| rowIndex |
	
	rowIndex := self selectedRowIndex.
	rowIndex > 1 ifFalse: [ ^ self ].
	
	self resetSearch.
	selectionStrategy 
		selectRowIndex: (rowIndex - 1) 
		event: event
