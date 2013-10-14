testIssue178B
	| ref pkg |
	pkg := MetacelloGoferPackage name: 'Glamour for Petit' packageFilename: 'ConfigurationOfGlamour'.
	ref := pkg resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref packageName = 'ConfigurationOfGlamour'.
	self assert: ref versionNumber = 56