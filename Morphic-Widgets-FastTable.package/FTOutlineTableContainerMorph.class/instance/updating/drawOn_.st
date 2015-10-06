drawOn: canvas
	| y |
	y := self top.
	self updateAllRows.
	self exposedRows
		keysAndValuesDo:
			[ :rowIndex :row | 
			| visibleHeight |
			visibleHeight := self owner rowHeight min: self bottom - y.
			(self owner dataSource needSeparatorBefore: rowIndex)
				ifTrue: [ canvas line: bounds left @ y to: bounds right @ y color: UITheme new scrollbarColor ].
			y := y + visibleHeight + self owner intercellSpacing ].
	super drawOn: canvas