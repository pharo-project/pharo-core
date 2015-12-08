calculateExactVisibleRows
	"Answer the rows to show in list - with possible fraction"

	| visibleRows |
	visibleRows := self height / (self owner rowHeight + self owner intercellSpacing).
	^ headerRow ifNotNil: [ visibleRows - 1 ] ifNil: [ visibleRows ]