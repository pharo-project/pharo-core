setUp
	super setUp.
	self compiledMethod: (PackageTreeNautilusUI>>#addClassIn:).
	lastValue := SharedPackageFilterPatternsHolder instance lastValue.