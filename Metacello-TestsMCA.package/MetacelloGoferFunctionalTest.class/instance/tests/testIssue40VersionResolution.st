testIssue40VersionResolution

	|  ref pkgBar pkgFoo |
	pkgBar := GoferVersionReference name: 'GoferFoo-lr.2'.
	ref := pkgBar resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 2.
	gofer repository: self alternateRepository.
	pkgBar := GoferVersionReference name: 'GoferBar-jf.1'.
	ref := pkgBar resolveWith: gofer.
	self assert: ref repository == self monticelloRepository.
	self assert: ref versionNumber = 1.
	self assert: ref author = 'jf'.
	ref := (GoferVersionReference name: 'GoferBar-dkh.24') resolveWith: gofer.
	self assert: ref repository == self alternateRepository.
	self assert: ref versionNumber = 24.
	self assert: ref author = 'dkh'.
	pkgFoo := GoferVersionReference name: 'GoferFoo-dkh.75'.
	ref := pkgFoo resolveWith: gofer.
	self assert: ref repository == self alternateRepository.
	self assert: ref versionNumber = 75.
	gofer
		version: 'GoferBar-jf.1';
		version: 'GoferFoo-dkh.75';
		load.
	self assert: pkgBar workingCopy ancestry ancestors first name = 'GoferBar-jf.1'.
	self assert: (pkgBar workingCopy repositoryGroup includes: self monticelloRepository).
	self assert: pkgBar workingCopy repositoryGroup repositories size = 3.
	self assert: pkgFoo workingCopy ancestry ancestors first name = 'GoferFoo-dkh.75'.
	self assert: (pkgFoo workingCopy repositoryGroup includes: self alternateRepository).
	self assert: pkgFoo workingCopy repositoryGroup repositories size = 3.
