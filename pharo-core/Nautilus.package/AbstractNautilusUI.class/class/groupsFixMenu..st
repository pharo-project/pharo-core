menu
groupsFixMenu: aBuilder
	<nautilusGroupFixMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #'Find Class... (f)')
		action: [target findClass];
		order: 0;
		help: 'Search for a class by name'.

	(aBuilder item: #'New group... (n)')
		action: [target addNewGroup];
		order: 100;
		withSeparatorAfter.
	
	(aBuilder item: #'Browse full (b)')
		action: [target fullBrowse];
		order: 999.