buildList
	| treeModel |

	treeModel := PackageTreeModel new  
		model: self;
		yourself.

	list := (MorphTreeMorph on: treeModel)
		multiSelection: true;
		dropEnabled: true;
		getMenuSelector: #menu:shifted:;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
				
	treeModel announcer 
		when: MorphTreeSelectionChanged do: [ :ann | self selected: ann selection  ].
				
	list buildContents.
	self selectedPackage ifNotNil: [ 
		self listSelectItem: self selectedPackage ].
	
	^ list.