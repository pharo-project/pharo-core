assertNoNewExternalDependency
	"Assert that there is no new dependency to a package outside this layer"
	| dependencies |
	dependencies := self dependencyChecker dependenciesOf: package packageName.
	newDependencies := dependencies difference: self bootstrapPackages.
	newDependencies ifNotEmpty: [ result addPackage: package ]