children
	^ (self packageDependencies"GroupedByAssembly" sort: [ :a :b | a packageName < b packageName])
		add: DAPotentialDependenciesNode new;
		yourself