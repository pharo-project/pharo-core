testPackagePatternStringRootPackageTag
	lastValue := SharedPackageFilterPatternsHolder instance lastValue.
	SharedPackageFilterPatternsHolder instance lastValue: ''.
	self compiledMethod: (PackageManifest>>#=).
	nautilus := PackageTreeNautilus openOnMethod: compiledMethod.
	self assertSelectedCompiledMethod.
	nautilus packagePatternString: 'H'.
	self assertSelectedCompiledMethod.
	nautilus packagePatternString: 'anything long'.
	self assertSelectedCompiledMethod.
	nautilus packagePatternString: ''.
	self assertSelectedCompiledMethod.