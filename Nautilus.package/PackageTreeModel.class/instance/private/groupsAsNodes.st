groupsAsNodes
	^ (self model groups
		collect: [ :each | PackageTreeGroupNodeModel with: each model: self ])
		sorted: [ :a :b | a name < b name ]