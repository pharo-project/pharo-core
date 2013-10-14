testIssue155
	"self debug: #testIssue155"

	| repoSpec repo project dirty |
	project := self class new project.
	repoSpec := self repositorySpec.
	repo := repoSpec createRepository.
	gofer repository: repo.
	gofer package: 'GoferFoo'; package: 'GoferBar'; load.
	self assert: (project packagesNeedSaving: '2.0-baseline') isEmpty.
	(Smalltalk classNamed: #GoferBar) compile: 'foo'.
	self assert: (dirty := project packagesNeedSaving: '2.0') notEmpty.
	dirty do: [:assoc | 
		assoc key load].
	self assert: (dirty := project packagesNeedSaving: '2.0') notEmpty.
	dirty do: [:assoc | 
		[ assoc key load ] on: MetacelloSkipDirtyPackageLoad do: [:ex | ex resume: true ]].
	self assert: (dirty := project packagesNeedSaving: '2.0') notEmpty.
	dirty do: [:assoc | 
		[ [ assoc key load ] 
			on: MetacelloSkipDirtyPackageLoad 
			do: [:ex | ex resume: false ] ] 
				on: Warning 
				do: [:ex | ex resume: true ]].
	self assert: (dirty := project packagesNeedSaving: '2.0') isEmpty.
