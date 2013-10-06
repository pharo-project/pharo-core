execute: aWorkingCopy
	| version |
	version := aWorkingCopy newVersionIn: (MCRepositoryGroup withRepositories: self gofer repositories).
	self gofer repositories
		do: [ :repository | repository storeVersion: version ]