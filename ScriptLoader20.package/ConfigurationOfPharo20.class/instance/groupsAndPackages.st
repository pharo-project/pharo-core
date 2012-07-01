private accessing
groupsAndPackages 
	| groups packages |
	
	packages := self allPackages.
	groups := OrderedCollection new
		"Kernel"
		add: 'PharoKernel'->(Smalltalk kernelPackageNames select: [ :each | packages includes: each ]);
		"Core"
		add: 'System'->(self packages: packages selectMatch: #('System-*'));
		add: 'Network'->(self packages: packages selectMatch: #('Network-*'));
		add: 'FileSystem'->(self packages: packages selectMatch: #('FileSystem-*'));
		add: 'Zinc'->(self packages: packages selectMatch: #('Zinc-*'));
		add: 'Announcements'->(self packages: packages selectMatch: #('Announcements-*'));
		add: 'Settings'->(self packages: packages selectMatch: #('Settings-*'));
		add: 'PharoTools'->(self packages: packages selectMatch: #('Tools*'));
		"Environment"
		add: 'AST'->(self packages: packages selectMatch: #('AST-*'));
		add: 'Keymapping'->(self packages: packages selectMatch: #('Keymapping-*'));
		add: 'CodeCompletion'->(self packages: packages selectMatch: #('NEC*' 'NOC*'));
		add: 'Polymorph'->(self packages: packages selectMatch: #('Polymorph-*'));
		add: 'RPackage'->(self packages: packages selectMatch: #('RPackage-*'));
		add: 'Refactoring'->(self packages: packages selectMatch: #('Refactoring-*'));
		add: 'Regex'->(self packages: packages selectMatch: #('Regex-*'));
		"Actually, all current Ring packages are part of Kernel"
		"add: 'Ring'->(self packages: nonKernelPackages selectMatch: #('Ring-*'));"
		add: 'SUnit'->(self packages: packages selectMatch: #('SUnit-*'));
		add: 'Spec'->(self packages: packages selectMatch: #('Spec-*'));
		add: 'Graphics'->(self packages: packages selectMatch: #('Graphics-*'));
		add: 'HelpSystem'->(self packages: packages selectMatch: #('HelpSystem-*'));
		add: 'NautilusBrowser'->(self packages: packages selectMatch: #('Nautilus*'));
		"Tests"
		add: 'PharoTests'->(self packages: packages selectMatch: self testPatterns rejectMatch: #());
		yourself.

	self flag: #todo. "Add this packages to correct groups"		
	groups add:  'Unsorted'->(packages copyWithoutAll: (groups inject: #() into: [ :all :each | all, (each value)])).
	
	^groups
