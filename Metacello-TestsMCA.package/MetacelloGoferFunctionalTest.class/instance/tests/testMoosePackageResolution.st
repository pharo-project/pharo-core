testMoosePackageResolution

	|  ref pkg |
	pkg := GoferPackageReference name: 'GoferFaux'.
	ref := pkg resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 35.
	pkg := MetacelloGoferPackage name: 'GoferFaux' packageFilename: 'GoferFaux-'.
	ref := pkg resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 35.
	pkg := GoferPackageReference name: 'GoferFaux-'.
	self should: [ pkg resolveWith: gofer ] raise: Error.
	pkg := GoferVersionReference name: 'GoferFaux-'.
	self should: [ pkg resolveWith: gofer ] raise: Error.
