protocol-events
whenSelectionChanged: aBlock
	"Set a block to perform when the selection is changed"

	selectionHolder whenChangedDo: aBlock.