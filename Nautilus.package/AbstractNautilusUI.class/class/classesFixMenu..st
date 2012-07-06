menu
classesFixMenu: aBuilder
	<nautilusClassFixMenu>
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Find Method... (f, m)')
		action: [target findMethod];
		order: 100;
		help: 'Search for a method by selector'.
		
	(aBuilder item: #'Find Class... (f, c)')
		action: [ target findClass ];
		order: 200;
		help: 'Search for a method by selector'.
	
	(aBuilder item: #'Add Class... (n, c)')
		action: [ target addClass ];
		order: 400;
		help: 'Create a new class'.
	(aBuilder item: #'Add Trait...')
		action: [ target addTrait ];
		order: 500;
		withSeparatorAfter.
		
	(aBuilder item: #'Browse full (b, f)')
		action: [target fullBrowse];
		order: 999;
		help: 'Open the same browser'.