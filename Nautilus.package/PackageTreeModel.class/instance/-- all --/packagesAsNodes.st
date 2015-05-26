packagesAsNodes
	^ ((self model packages
		select: [ :each | self packageMatchPattern: each ]
		thenCollect: [ :each | each asNautilusNodeWithModel: self ])
		sorted: [ :a :b | a name < b name ]) 