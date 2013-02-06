menu
classesMenu: aBuilder
	<contextMenu>
	<nautilusGlobalClassMenu>
	| target |
	
	target := aBuilder model.
	target selectedClass ifNil: [^target].

	(aBuilder item: #'Rename...')
		keyText: 'r,c';
		action: [ target renameClass ];
		enabledBlock: [ target selectedClasses size <= 1 ];
		order: -99;
		withSeparatorAfter.	
		
	(aBuilder item: #'Browse scoped')
		keyText: 'b, s';
		action: [target restrictedBrowseClass];
		order: 1000;
		help: 'Open a browser on a restricted view'.
	
	(aBuilder item: #'Add in Group...')
		keyText: 'n, e, c';
		action: [ target addClassesInGroup ];
		order: 1100;
		withSeparatorAfter.
	
	(target selectedClasses allSatisfy: [:each | each inheritsFrom: TestCase ])
			ifTrue:[	
					(aBuilder item:#'Run tests')
						keyText: 'j, c';
						action: [ target runClassTests ];
						order: 1200].
						
	(aBuilder item: #Analyze)
		enabledBlock: [ target selectedClasses size <= 1 ];
		order: 0;
		withSeparatorAfter.

	(aBuilder item: #'Jump to test class')
		keyText: 'g, j';
		action: [ target createTestForSelectedClass ];
		enabledBlock: [ target selectedClasses size <= 1 ];
		order: 300;
		withSeparatorAfter.
		
		
	(aBuilder item: #'Move to package...')
		keyText: 'm, c';
		action: [ target moveInNewPackage ];
		order: 1400.	
			
	(aBuilder item: #'Copy...')
		keyText: 'c, c';
		action: [ target copyClasses ];
		order: 1600.	
			
	(aBuilder item: #'Remove...')
		keyText: 'x, c';
		action: [ target removeClasses ];
		icon: (target iconClass iconNamed: #removeIcon);
		order: 1700;
		withSeparatorAfter.
			
	(aBuilder item: #'File Out')
		action: [ target fileOutClass ];
		withSeparatorAfter;
		order: 1800.	

	target showGroups
		ifTrue: [
			target selectedGroup isReadOnly 
				ifFalse: [
					(aBuilder item: #'Remove from Group')
						keyText: 'X';
						action: [ target removeClassFromGroup ];
						order: 1900] ].