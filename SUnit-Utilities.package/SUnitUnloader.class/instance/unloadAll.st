unloading
unloadAll
	| packagesToRemove |
	packagesToRemove := self testPackages.
	self unloadTestCases.
	self unloadPackages: packagesToRemove.
	self unloadSUnit.