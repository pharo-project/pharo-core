treeBox

	^ GroupboxMorph new 
		addContentMorph: self buildGroupsTree;
		addContentMorph: (self newRow: {self buildAddButton. self buildRenameButton. self buildRemoveButton});
		label: 'Choose a group:';
		hResizing: #spaceFill;
		vResizing: #spaceFill