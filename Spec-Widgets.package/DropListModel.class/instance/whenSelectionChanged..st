protocol-events
whenSelectionChanged: aBlock
	<api: #event>
	"Set a block to perform when the selection is changed"

	selectionHolder whenChangedDo: aBlock.