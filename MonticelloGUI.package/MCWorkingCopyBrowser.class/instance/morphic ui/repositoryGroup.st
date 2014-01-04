repositoryGroup
	^ showOnlyRepositoriesFromWorkingCopy
		ifTrue:  [ workingCopy ifNil: [ MCRepositoryGroup default ] ifNotNil: [ workingCopy repositoryGroup ]  ]
		ifFalse: [ MCRepositoryGroup default ] 