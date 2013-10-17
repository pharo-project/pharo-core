updateTree
	< api: #do>
	"Force the tree to refresh"

	self changed: #updateTree with: {}.
	treeUpdated contents: nil.