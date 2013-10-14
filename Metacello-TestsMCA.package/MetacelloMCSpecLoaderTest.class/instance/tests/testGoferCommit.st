testGoferCommit

	| project version repoSpec repo allVersionsSize pkg |
	project := self project.
	version := project version: '1.0'.
	repoSpec := version spec repositorySpecs first.
	repo := repoSpec createRepository.
	allVersionsSize := repo allVersionInfos size.
	version load.
	(Smalltalk classNamed: #GoferBar) compile: 'foo'.
	pkg := version packageNamed: 'GoferBar'.
	pkg repository: repoSpec.
	pkg goferCommitPackage: 'commit message'.
	self assert: repo allVersionInfos size = (allVersionsSize + 1)