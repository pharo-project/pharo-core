updateRootFor: aText
	| aFilter nodes |
	
	aFilter := TokenTreeFilter token: aText.

	tree selection: nil.
	tree updateTree.

	nodes := (tree roots collect: [ :e | (tree rootNodeHolder cull: e) ]) asOrderedCollection.
	nodes do: [:r | r updateAccordingTo: aFilter].
	
	tree changed: #removeRootsSuchAs: with: { [:n | (aFilter keepTreeNode: n) not and: [n isEmpty]] }.

	tree expandAll.

	tree changed: #rootNodes.