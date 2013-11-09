initialize

	super initialize.

	treeModel := SpecTreeModel model: self.	
	treeModel announcer
		on: MorphTreeSelectionChanged
		send: #onMorphTreeSelectionChanged:
		to: self.