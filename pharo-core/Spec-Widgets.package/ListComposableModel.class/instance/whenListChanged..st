protocol-events
whenListChanged: aBlock
	"Specify a block to value after the contents of the list has changed"
	"Basically when you set a new list of items"

	listHolder whenChangedDo: aBlock