menu
categoriesMenu: aBuilder
	<nautilusProtocolMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #'Find Method... (f)')
		action: [ target findMethod ];
		order: 0;
		help: 'Search for a method by name'.
			
	(aBuilder item: #'Add protocol... (n)')
		action: [ target addCategory ];
		order: 100;
		withSeparatorAfter.
	
	(aBuilder item: #'Browse full (b)')
		action: [ target fullBrowse ];
		order: 200;
		withSeparatorAfter.
		
	(aBuilder item: #'Categorize all uncategorized')
		action: [ target categorizeAllUncategorizedMethods ];
		order: 1100.	
		
	(aBuilder item: #'Remove empty protocols')
		action: [ target removeEmptyCategories ];
		order: 1200;
		withSeparatorAfter.
		
	target selectedCategory ifNil: [ ^ target ].
	
	(aBuilder item: #'Rename... (r)')
		action: [ target renameCategory ];
		order: 1300;
		enabledBlock: [ target enableCategorySingleSelection ].	
		
	(aBuilder item: #'Remove... (x)')
		action: [ target removeCategories ];
		order: 1400;
		icon: (target iconClass iconNamed: #removeIcon);
		withSeparatorAfter.
		
	(aBuilder item: #'Add in group.. (e)')
		action: [ target addProtocolsInGroup ];
		order: 1500.
	
	(aBuilder item: #'File Out')
		action: [ target fileOutCategories ];
		order: 1600.