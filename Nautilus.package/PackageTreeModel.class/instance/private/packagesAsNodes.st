packagesAsNodes
	^ (self model packages
		select:
			[ :each | (self packageMatchPattern: each) and: [ (each name beginsWith: 'ConfigurationOf') not ] ]
		thenCollect: [ :each | each asNautilusNodeWithModel: self ])
		sorted: [ :a :b | a name < b name ]