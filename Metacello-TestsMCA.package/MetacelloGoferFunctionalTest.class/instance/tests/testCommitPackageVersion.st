testCommitPackageVersion
	| repoSpec repo project packagesNeedSaving allVersionsSize |
	project := self project.
	repoSpec := self repositorySpec.
	repo := repoSpec createRepository.
	allVersionsSize := repo allVersionInfos size.
	gofer repository: repo.
	gofer 
		package: 'GoferFoo'; 
		package: 'GoferBar'; 
		metacelloLoad.
	(Smalltalk classNamed: #GoferBar) compile: 'foo'.
	self assert: (packagesNeedSaving := project packagesNeedSaving: '1.0') notEmpty.
	packagesNeedSaving do: [:assoc | | gof |
		gof := Gofer new.
		gof disablePackageCache.
		gof repository: assoc value.
		gof package: assoc key name.
		gof commit: 'testing' ].
	self assert: repo allVersionInfos size = (allVersionsSize + 1)