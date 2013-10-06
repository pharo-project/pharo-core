initialize

	super initialize.

	treeModel := SpecTreeModel model: self.
	
	treeModel announcer
		on: MorphTreeSelectionChanged
		send: #onMorphTreeSelectionChanged:
		to: self.
		
	rootNodeHolder := [:item | DefaultSpecTreeNode with: item model: treeModel ] asValueHolder.		
	rootNodeHolder whenChangedDo: [ self updateTree ].
