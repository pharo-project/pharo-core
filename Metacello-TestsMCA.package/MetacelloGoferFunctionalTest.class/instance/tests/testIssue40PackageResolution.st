testIssue40PackageResolution

	|  ref pkgBar pkgFoo |
	pkgBar := GoferPackageReference name: 'GoferFoo'.
	ref := pkgBar resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 4.
	gofer repository: self alternateRepository.
	pkgBar := GoferPackageReference name: 'GoferBar'.
	ref := pkgBar resolveWith: gofer.
	self assert: ref repository == self alternateRepository.
	self assert: ref versionNumber = 25.
	self assert: ref author = 'dkh'.
	pkgFoo := GoferPackageReference name: 'GoferFoo'.
	ref := pkgFoo resolveWith: gofer.
	self assert: ref repository == self alternateRepository.
	self assert: ref versionNumber = 104.
	gofer
		package: 'GoferBar';
		package: 'GoferFoo';
		load.
	self assert: pkgBar workingCopy ancestry ancestors first name = 'GoferBar-dkh.25'.
	self assert: pkgFoo workingCopy ancestry ancestors first name = 'GoferFoo-dkh.104'.