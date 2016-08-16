dependencyChecker
	^ (DependencyChecker ifNil: [ DADependencyChecker ]) new