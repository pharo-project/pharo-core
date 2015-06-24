keyStrokeArrowDown: event
	| rowIndex |
	rowIndex := self selectedRowIndex.
	(rowIndex < self numberOfRows) ifFalse: [ ^ self ].
	
	self resetSearch.
	self selectionStrategy 
		selectRowIndex: (rowIndex + 1) 
		event: event
