tree
	^ tree ifNil: [ 
		tree := self instantiate: TreeModel.
		tree whenBuiltDo: [ self initializeShortcuts ].
		tree 
			whenSelectedItemChanged: [ :item | item ifNotNil: [ self text doItReceiver: item value ]];	
			childrenBlock: [ :anObject | self childrenFor: anObject ];
			iconBlock:     [ :treeNode | self iconFor: treeNode ];
			displayBlock:  [ :anObject | self labelFor: anObject ];
			menu:          [ :menu |     self inspectionMenu: menu ];
			doubleClick: [
				 self diveInto: self selectedObject ];
			yourself]