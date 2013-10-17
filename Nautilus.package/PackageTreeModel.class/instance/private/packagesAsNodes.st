packagesAsNodes
	^ (self model packages
		collect: [ :each | PackageTreePackageNodeModel with: each model: self ])
		sorted: [ :a :b | a name < b name ]