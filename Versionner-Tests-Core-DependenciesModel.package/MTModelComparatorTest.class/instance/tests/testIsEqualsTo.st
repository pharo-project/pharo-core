testIsEqualsTo
	| projectA projectB |
	
	projectA := MTProjectExampleBuilder projectA.
	projectB := MTProjectExampleBuilder projectA.
	self deny: projectA == projectB.
	self assert: (MTModelComparator is: projectA equalsTo: projectB).
	
	projectB removeDependencyNamed: 'PackageA2'.
	self deny: (MTModelComparator is: projectA equalsTo: projectB).
	
	projectB := MTProjectExampleBuilder projectA.
	projectB removeDependencyNamed: 'LibXYZ'.
	self deny: (MTModelComparator is: projectA equalsTo: projectB).

	projectB := MTProjectExampleBuilder projectA.
	projectB removeDependencyNamed: 'All'.
	self deny: (MTModelComparator is: projectA equalsTo: projectB).

	projectB := MTProjectExampleBuilder projectA.
	(projectB dependencyNamed: 'All') removeDependency: (projectB dependencyNamed: 'SmallGroup').
	self deny: (MTModelComparator is: projectA equalsTo: projectB).