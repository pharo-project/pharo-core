menu
packagesFixMenu: aBuilder
	<nautilusPackageFixMenu>
	| target |
	target := aBuilder model.
	
	(aBuilder item: #'Find Class... (f, c)')
		action: [target findClass];
		order: 0;
		help: 'Search for a class by name'.
		
	(aBuilder item: #'Find Package... (f, p)')
		action: [ target findPackage ];
		order: 100;
		help: 'Search for a package by name';
		withSeparatorAfter.
		
	(aBuilder item: #'Add package... (n, p)')
		action: [target addPackage];
		order: 200;
		help: 'Add a package';
		withSeparatorAfter.
		
	(aBuilder item: #'Browse full (b, f)')
		action: [target fullBrowse];
		order: 999;
		help: 'Open the same browser'.