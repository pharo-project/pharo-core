monticello menus
packagesOpenMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| package mcpackage target last group |
	target := aBuilder model.
	(package := target selectedPackage) ifNil: [ ^ target ].
	mcpackage := NautilusMCBindings default mcPackageFor: package.
	mcpackage ifNil: [ ^ self ].
	
	(aBuilder item: #('Open ',package name))
		label: 'Open...';
		order: 1297;
		help: 'Open';
		icon: (self iconClass iconNamed: #monticelloPackage);
		enabledBlock: [ target selectedPackages size < 2 ].

	(group := mcpackage workingCopy repositoryGroup) repositories doWithIndex: [:repo : index |
		last := (aBuilder item: ('Repo',index printString))
					label: repo description;
					parent: #('Open ',package name);
					order: index;
					action: [ self default open: mcpackage in: repo ]].
	last withSeparatorAfter.
		(aBuilder item: 'Add a repository')
						parent: #('Open ',package name);
						order: 99;
						action: [ self default addRepositoryTo: group ]