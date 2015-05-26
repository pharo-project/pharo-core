testOpenOnMethod
	nautilus := PackageTreeNautilus openOnMethod: compiledMethod.
	self assertSelectedCompiledMethod.