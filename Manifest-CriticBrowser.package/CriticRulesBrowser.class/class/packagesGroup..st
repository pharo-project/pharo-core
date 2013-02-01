instance creation
packagesGroup: aBuilder
	<nautilusGroupMenu>
	| packages target env rules group|
	target := aBuilder model.
	
	
	(group := target selectedGroups) ifNil: [ ^ target ].
	
	packages := (group gather: [:each | each classes collect: [:cl |
			PackageInfo named: (cl package name)]]) asSet.
	
	rules :=   RBCompositeLintRule allGoodRules.
	env := (RBPackageEnvironment new packages: packages ).	
	
	(aBuilder item: #'Critics Browser')
		action: [self openOnRule: rules onEnvironment: env];
		help: 'Running critics rules on this group'.