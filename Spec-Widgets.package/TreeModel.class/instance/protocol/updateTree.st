updateTree
	< api: #do>
	"Force the tree to refresh"

	self treeModel resetRootNodes.
	self treeModel changed: #rootNodes.
	treeUpdated contents: nil.