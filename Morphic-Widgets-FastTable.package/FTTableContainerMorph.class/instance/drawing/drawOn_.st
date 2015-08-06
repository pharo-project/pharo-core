drawOn: canvas
	| x y cellWidth cellHeight rowsToDisplay rowSubviews highligtedRowIndexes primarySelectionIndex |

	self bounds ifNil: [ ^ self ]. "Nothing to show yet"
	self owner ifNil: [ ^ self ].

	x := self left + self class rowLeftMargin.
	y := self top.	
	cellWidth := self width - self class rowLeftMargin.
	cellHeight := self owner rowHeight. 
	highligtedRowIndexes := 
		self owner selectedRowIndexes, 
		self owner highlightedRowIndexes.
	primarySelectionIndex := self owner selectedRowIndex.
	
	"For some superweird reason, calling #calculateExposedRows here instead in #changed (where
	 it should be called) is 10x faster. Since the whole purpose of this component is speed, for 
	 now I'm calling it here and adding the #setNeedRecalculateRows mechanism. 
	 History, please forgive me."
	self updateAllRows.

	rowsToDisplay := self exposedRows.
	rowSubviews := OrderedCollection new: rowsToDisplay size + 1.
	headerRow ifNotNil: [ 
		headerRow bounds: (x@y extent: cellWidth@cellHeight).
		y := y + cellHeight + self owner intercellSpacing.		
		rowSubviews add: headerRow ].
	
	rowsToDisplay keysAndValuesDo: [ :rowIndex :row | | visibleHeight |
		visibleHeight := cellHeight min: (self bottom - y). 
		row bounds: (x@y extent: cellWidth@visibleHeight).
		y := y + visibleHeight + self owner intercellSpacing.
		rowSubviews add: ((highligtedRowIndexes includes: rowIndex) 
			ifTrue: [ 
				"IMPORTANT: I need to set owner to nil because otherwise it will trigger an 
				 invalidation of the owner when adding morph to selectionMorph, causing an 
				 infinite loop"
				self 
					toSelectionRow: (row privateOwner: nil) 
					primary: primarySelectionIndex = rowIndex ]
			ifFalse: [ row ]) ].		
		
	submorphs := rowSubviews asArray.
	super drawOn: canvas.
	needsRefreshExposedRows := false