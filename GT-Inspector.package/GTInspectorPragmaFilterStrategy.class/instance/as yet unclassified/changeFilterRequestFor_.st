changeFilterRequestFor: aGTInspector
	|treeModel|
	
	treeModel := MorphTreeModel new.
	treeModel
		 beCheckList;
		 rootItems: allPragmaKeys;
		 wrapBlockOrSelector: #printString;
		 autoMultiSelection: true;
		 headerLabel: 'Tags';
		 selectItems: selectedPragmaKeys.
	 (treeModel openDialogWindowIn: World title: 'All available tags' selectedtems: selectedPragmaKeys) ifNotNil: [ :selection | 
		selectedPragmaKeys := selection.
		aGTInspector update ]