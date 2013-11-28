showTree

	self needRebuild: false.
	self buildWithSpecLayout: self treeSpec.

	self focusOrder 
		removeAll;
		add: tree