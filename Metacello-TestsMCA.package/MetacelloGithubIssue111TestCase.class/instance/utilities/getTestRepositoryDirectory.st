getTestRepositoryDirectory
	| fileTreeRepo wc |
	MCWorkingCopy registry
		do: [:mgr | ((MetacelloPlatform current packageInfoFor: mgr) includesClass: self class)
				ifTrue: [wc := mgr]].
	wc
		ifNil: [^ self assert: false].
	fileTreeRepo := (wc repositoryGroup repositories
				reject: [:repo | MCCacheRepository default = repo])
				detect: [:repo | repo isKindOf: MCFileTreeRepository]
				ifNone: [^ nil].
	^ MetacelloPlatform current
		directoryFromPath: 'tests/repositories/issue111Packages'
		relativeTo: (MetacelloPlatform current parentDirectoryOf: fileTreeRepo directory)
