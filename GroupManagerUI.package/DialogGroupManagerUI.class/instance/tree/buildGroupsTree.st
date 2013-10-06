buildGroupsTree

	tree := (MorphTreeMorph on: self treeModel)
				beSingle;
				autoDeselection: true;
				rowInset: 4;
				columnInset: 4;
				getMenuSelector: #menu:shifted:;
				rowColorForEven: Color lightGray muchLighter odd: Color white.
	tree
		vResizing: #spaceFill;
		hResizing: #spaceFill.

	^ tree buildContents