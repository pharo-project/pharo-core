protocol-events
whenSelectedItemChanged: aBlock
	"Set a block to perform when the selected item is changed"

	selectionHolder selection whenChangedDo: aBlock