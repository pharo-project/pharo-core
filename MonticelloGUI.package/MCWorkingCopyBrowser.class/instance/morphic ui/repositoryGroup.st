repositoryGroup
	(showOnlyRepositoriesFromWorkingCopy and: [ workingCopy isNotNil ])
		ifTrue: [ ^ workingCopy repositoryGroup ].
	^ MCRepositoryGroup default