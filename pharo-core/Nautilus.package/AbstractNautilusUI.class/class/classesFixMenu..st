menu
classesFixMenu: aBuilder
	<nautilusClassFixMenu>
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Find Method... (f)')
		action: [target findMethod];
		order: 100;
		help: 'Search for a method by selector'.
		
	(aBuilder item: #'Find Class... (F)')
		action: [ target findClass ];
		order: 200;
		help: 'Search for a method by selector'.
	
	(aBuilder item: #'Add class... (n)')
		action: [ target addClass ];
		order: 400;
		help: 'Create a new class'.
	(aBuilder item: #'Add trait...')
		action: [ target addTrait ];
		order: 500;
		withSeparatorAfter.
		
	(aBuilder item: #'Browse full (b)')
		action: [target fullBrowse];
		order: 999;
		help: 'Open the same browser'.