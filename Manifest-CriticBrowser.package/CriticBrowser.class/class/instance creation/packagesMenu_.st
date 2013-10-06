packagesMenu: aBuilder
	<nautilusGlobalPackageMenu>
	(aBuilder item: #'Critics Browser')
		action: [ 
					| packages target env rules |
					target := aBuilder model.
					packages := OrderedCollection new.
					target selectedPackages
						do: [ :p | MCWorkingCopy managersForCategory: p packageName do: [ :package | packages add: package ] ].
					rules := RBCompositeLintRule allGoodRules.
					env := RBPackageEnvironment new packages: packages.
					self openOnRule: rules onEnvironment: env ];
		help: 'Running critics rules on this package'