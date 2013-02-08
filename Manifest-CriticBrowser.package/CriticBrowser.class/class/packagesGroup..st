instance creation
packagesGroup: aBuilder
	<nautilusGlobalGroupMenu>
	| packages target env rules group|
	target := aBuilder model.
	
	(group := target selectedGroups).
	
	packages := OrderedCollection new.
	group do: [:each |
		each classes do: [:cl |
			MCWorkingCopy managersForClass: cl do: [:package | packages add: package]]].
	
	rules :=   RBCompositeLintRule allGoodRules.
	env := (RBPackageEnvironment new packages: packages ).	
	
	(aBuilder item: #'Critics Browser')
		action: [self openOnRule: rules onEnvironment: env];
		help: 'Running critics rules on this group'.