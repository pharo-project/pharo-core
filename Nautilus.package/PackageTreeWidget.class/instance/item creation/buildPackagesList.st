buildPackagesList
		| treeModel |

	treeModel := PackageTreeModel new  
		model: self model ;
		yourself.

	packagesList := (MorphTreeMorph on: treeModel)
		multiSelection: true;
		dropEnabled: true;
		getMenuSelector: #menu:shifted:;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
				
	treeModel announcer 
		when: MorphTreeSelectionChanged do: [ :ann | self model selected: ann selection  ].
				
	packagesList buildContents.
	self model selectedPackage ifNotNil: [ 
		self model listSelectItem: self model selectedPackage ].
	
	^ packagesList.
