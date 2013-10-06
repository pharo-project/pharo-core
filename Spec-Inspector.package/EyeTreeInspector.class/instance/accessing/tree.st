tree
	^ tree ifNil: [ 
		tree := self instantiate: TreeModel.
		tree 
			childrenBlock: [ :anObject | self childrenFor: anObject ];
			iconBlock:     [ :treeNode | self iconFor: treeNode item ];
			displayBlock:  [ :anObject | self labelFor: anObject ];
			doubleClick: [
				 self diveInto: self selectedObject ]]