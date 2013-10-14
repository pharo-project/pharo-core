testPackageSpecLoad

	| project version repoSpec pkg wc |
	project := self project.
	version := project version: '1.0'.
	repoSpec := version spec repositorySpecs first.
	pkg := version packageNamed: 'GoferBar'.
	pkg repository: repoSpec.
	pkg load.
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar-jf.1').
