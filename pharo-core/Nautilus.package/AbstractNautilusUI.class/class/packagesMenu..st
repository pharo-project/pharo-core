menu
packagesMenu: aBuilder
	<nautilusPackageMenu>
	| package target |
	target := aBuilder model.

	(package := target selectedPackage) ifNil: [ ^ target ].
	(aBuilder item: #'Browse restricted (B)')
		action: [ target restrictedBrowsePackage ];
		order: 1000;
		help: 'Open a browser on a restricted view';
		withSeparatorAfter.
						
	(aBuilder item: #'Rename... (r)')
		action: [target renamePackage];
		order: 1100;
		help: 'Rename a package';
		enabledBlock: [ target selectedPackages size < 2 ].
		
	(aBuilder item: #'Remove... (x)')
		action: [target removePackages ];
		order: 1200;
		help: 'Remove a package';
		icon: (target iconClass iconNamed: #removeIcon).
		
	(aBuilder item: #'Run tests... (t)')
		action: [target runPackagesTestsNotifying: true ];
		enabled: (package classes anySatisfy: [:e | e inheritsFrom: TestCase ]);
		order: 1250;
		help: 'Run tests';
		withSeparatorAfter.
		
	(aBuilder item: #'File Out')
		action: [target fileOutPackage];
		order: 1300;
		help: 'File out a package';
		withSeparatorAfter.
		
	
	
	target selectedPackages size > 1
		ifTrue: [
			(aBuilder item: #'Add as Groups & Browse (g)')
				action: [ target addPackagesAsGroupsAndBrowse ];
				order: 1400;
				help: 'Create a group based on the current package and browse it'.
				
			(aBuilder item: #'Add as Group & Browse')
				action: [ target addPackageAsGroupAndBrowse ];
				order: 1500;
				help: 'Create a group based on the current package and browse it'.

			(aBuilder item: #'Add as Groups (G)')
				action: [ target addPackagesAsGroups ];
				order: 1600;
				help: 'Create a group based on the current package'.

			(aBuilder item: #'Add as Group')
				action: [target addPackageAsGroup];
				order: 1700;
				help: 'Create a group based on the current package'.	
					]
		ifFalse: [
			(aBuilder item: #'Add as Group & Browse (g)')
				action: [ target addPackageAsGroupAndBrowse ];
				order: 1500;
				help: 'Create a group based on the current package and browse it'.
				
			(aBuilder item: #'Add as Group (G)')
				action: [target addPackageAsGroup];
				order: 1700;
				help: 'Create a group based on the current package'.	
	].			
			
		
	(aBuilder item: #'Add Matching Packages as Groups and Browse (m)')
		action: [ target addMatchingPackagesInGroupsAndBrowse ];
		order: 1800.
	
	(aBuilder item: #'Add in Group... (e)')
		action: [target addPackagesInGroup];
		order: 1900;
		help: 'Add current package in a group'.