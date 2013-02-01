instance creation
packagesMenu: aBuilder
	<nautilusPackageMenu>
	| packages target env rules |
	target := aBuilder model.
	(packages := target selectedPackages) ifNil: [ ^ {target} ].
	rules :=  RBCompositeLintRule allGoodRules.
	env := (RBPackageEnvironment new 
				packages: (packages collect: [:each | PackageInfo named: (each name)]) ).	
	(aBuilder item: #'Critics Browser')
		action: [self  openOnRule: rules onEnvironment: env];
		help: 'Running critics rules on this package'.