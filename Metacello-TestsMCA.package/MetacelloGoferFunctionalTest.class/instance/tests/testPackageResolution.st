testPackageResolution
	|  project version repo pkg ref |
	project := self project.
	version := project version: '1.0-baseline'.
	repo := version spec repositorySpecs first createRepository.
	gofer repository: repo.
	pkg := GoferPackageReference name: 'GoferFoo'.
	ref := pkg resolveWith: gofer.
	self assert: ref versionNumber = 4.
	pkg := GoferPackageReference name: 'GoferBar'.
	ref := pkg resolveWith: gofer.
	self assert: ref versionNumber = 1.
	self assert: ref author = 'lr'.
