protocol-events
whenReadSelectionIsChanged: aBlock
	<api: #event>
	"Set a block to perform when the read selection block changed"
	
	readSelectionHolder whenChangedDo: aBlock