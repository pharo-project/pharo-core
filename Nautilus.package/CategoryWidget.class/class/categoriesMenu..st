menu
categoriesMenu: aBuilder
	<nautilusGlobalProtocolMenu>
	| target |
	
	target := aBuilder model.
	(aBuilder item: #'Find Method...')
		keyText: 'f, m';
		action: [ target findMethod ];
		order: 0;
		help: 'Search for a method by name'.
			
	(aBuilder item: #'Add protocol...')
		keyText: 'n, t';
		action: [ target addCategory ];
		order: 100;
		withSeparatorAfter.
	
	(aBuilder item: #'Browse full')
		keyText: 'b, f';
		action: [ target fullBrowse ];
		order: 200;
		withSeparatorAfter.
		
	(aBuilder item: #'Categorize all uncategorized')
		keyText: 'h, C';
		action: [ target categorizeAllUncategorizedMethods ];
		order: 1100.	
		
	(aBuilder item: #'Remove empty protocols')
		action: [ target removeEmptyCategories ];
		order: 1200;
		withSeparatorAfter.
		
	target selectedCategory ifNil: [ ^ target ].
	
	(aBuilder item: #'Rename...')
		keyText: 'r, m';
		action: [ target renameCategory ];
		order: 1300;
		enabledBlock: [ target enableCategorySingleSelection ].	
		
	(aBuilder item: #'Remove...')
		keyText: 'x, m';
		action: [ target removeCategories ];
		order: 1400;
		icon: (target iconClass iconNamed: #removeIcon);
		withSeparatorAfter.
		
	(aBuilder item: #'Add in group...')
		keyText: 'n, e, m';
		action: [ target addProtocolsInGroup ];
		order: 1500.
	
	(aBuilder item: #'File Out')
		action: [ target fileOutCategories ];
		order: 1600.