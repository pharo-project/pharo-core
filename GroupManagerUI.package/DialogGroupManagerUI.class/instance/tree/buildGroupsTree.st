buildGroupsTree
	^ (MorphTreeMorph on: self treeModel)
		beSingle;
		autoDeselection: true;
		rowInset: 4;
		columnInset: 4;
		getMenuSelector: #menu:shifted:;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		buildContents