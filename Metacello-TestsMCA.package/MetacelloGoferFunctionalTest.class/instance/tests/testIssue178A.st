testIssue178A
	| ref pkg |
	pkg := MetacelloGoferPackage name: 'ConfigurationOfNautilusRefactoring' packageFilename: 'ConfigurationOfNautilus'.
	ref := pkg resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 56