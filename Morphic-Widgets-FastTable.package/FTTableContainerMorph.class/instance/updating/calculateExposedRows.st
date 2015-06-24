calculateExposedRows
	| visibleRows numberOfColumns columns columnWidths startIndex |
	
	self canRefreshValues ifFalse: [ ^ self ].

	visibleRows := self calculateMaxVisibleRows.
	startIndex := self calculateStartIndexWhenShowing: visibleRows.
	numberOfColumns := self owner numberOfColumns.
	columns := self owner columns. 
	columnWidths := self calculateColumnWidths.

	exposedRows := SmallDictionary new.
	startIndex to: ((startIndex + visibleRows - 1) min: self owner numberOfRows) do: [ :rowIndex | 
		| row |
		row := (FTTableRowMorph table: self owner) privateOwner: self.
		1 to: numberOfColumns do: [ :columnIndex | 
			| cell |
			cell := (self owner dataSource 
				cellColumn: (columns at: columnIndex)
				row: rowIndex).  
			cell width: (columnWidths at: columnIndex).
			row addMorphBack: cell ].
		exposedRows at: rowIndex put: row ]