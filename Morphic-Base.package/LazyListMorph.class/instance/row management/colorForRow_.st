colorForRow: row 
	"Answer the color for the row text."
	^ (self isRowSelected: row )
		ifTrue: [self theme currentSettings selectionTextColor]
		ifFalse: [self color]