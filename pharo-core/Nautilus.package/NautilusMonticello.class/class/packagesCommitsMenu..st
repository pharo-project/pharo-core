monticello menus
packagesCommitsMenu: aBuilder
	<nautilusPackageMenu>
	| package mcpackage target |
	target := aBuilder model.
	(package := target selectedPackage) ifNil: [ ^ target ].
	mcpackage := (NautilusMCBindings default mcPackageFor: package).
	mcpackage ifNil: [ ^self ].
	
	mcpackage isDirty
		ifTrue: [ | last group |
			(aBuilder item: #('Commit in ',package name))
				label: 'Commit in...';
				order: 1296;
				help: 'Commit';
				icon: (self iconClass iconNamed: #monticelloPackage);
				enabledBlock: [ target selectedPackages size < 2 ].
	(group := mcpackage workingCopy repositoryGroup) repositories doWithIndex: [:repo : index |
		last := ((aBuilder item: ('Repo',index printString))
					label: repo description;
					parent: #('Commit in ',package name);
					order: index;
					action: [ self default commit: mcpackage workingCopy in: repo ])].
		last withSeparatorAfter.
		(aBuilder item: 'Add a repository')
						parent: #('Commit in ',package name);
						order: 99;
						action: [ self default addRepositoryTo: group ]]