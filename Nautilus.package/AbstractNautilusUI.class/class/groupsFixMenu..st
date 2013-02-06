menu
groupsFixMenu: aBuilder
	<contextMenu>
	<nautilusGlobalGroupFixMenu>
	| target |
	target := aBuilder model.
	(aBuilder item: #'Find Class...')
		keyText: 'f, c';
		action: [target findClass];
		order: 0;
		help: 'Search for a class by name'.

	(aBuilder item: #'New group...')
		keyText: 'n, g';
		action: [target addNewGroup];
		order: 100;
		withSeparatorAfter.
	
	(aBuilder item: #'Browse full')
		keyText: 'b, f';
		action: [target fullBrowse];
		order: 999.