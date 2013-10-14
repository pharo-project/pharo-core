testPackagesNeedSaving
	| repoSpec repo project |
	project := self class new project.
	repoSpec := self repositorySpec.
	repo := repoSpec createRepository.
	gofer repository: repo.
	gofer package: 'GoferFoo'; package: 'GoferBar'; load.
	self assert: (project packagesNeedSaving: '1.0-baseline') isEmpty.
	(Smalltalk classNamed: #GoferBar) compile: 'foo'.
	self assert: (project packagesNeedSaving: '1.0-baseline') notEmpty.
