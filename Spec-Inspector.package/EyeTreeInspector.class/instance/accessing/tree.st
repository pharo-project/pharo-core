tree
	^ tree ifNil: [ 
		tree := self instantiate: TreeModel.
		tree whenBuiltDo: [ self initializeShortcuts ].
		tree 
			childrenBlock: [ :anObject | self childrenFor: anObject ];
			iconBlock:     [ :treeNode | self iconFor: treeNode content ];
			displayBlock:  [ :anObject | self labelFor: anObject ];
			menu:          [ :menu |     self inspectionMenu: menu ];
			doubleClick: [
				 self diveInto: self selectedObject ];
			yourself]