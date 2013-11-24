packagesAsNodes
	^ ((self model packages
		select: [ :each | self packageMatchPattern: each ]
		thenCollect: [ :each | PackageTreePackageNodeModel with: each model: self ])
		sorted: [ :a :b | a name < b name ]) 