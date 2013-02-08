instance creation
packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	| packages target env rules |
	
	target := aBuilder model.


	packages := OrderedCollection new.

	
	target selectedPackages collect: [:p |   MCWorkingCopy managersForCategory: p packageName do: [:package | packages add: package]].
	rules :=  RBCompositeLintRule allGoodRules.

	env := (RBPackageEnvironment new 
				packages: packages ).	
	(aBuilder item: #'Critics Browser')
		action: [self  openOnRule: rules onEnvironment: env];
		help: 'Running critics rules on this package'.