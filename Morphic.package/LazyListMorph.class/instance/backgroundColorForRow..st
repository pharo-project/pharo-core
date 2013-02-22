row management
backgroundColorForRow: row 
	"Answer the color for the row text."
	^ (self isRowSelected: row )
		ifTrue: [  listSource selectionColorToUse ]
		ifFalse: [ Color white ]