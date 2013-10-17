newVersionWithName: nameString message: messageString in: aRepository
	
	| info deps |
	info := ancestry infoWithName: nameString message: messageString.
	ancestry := MCWorkingAncestry new addAncestor: info.
	self modified: true; modified: false.
	
	deps := self collectDependenciesWithMessage: messageString in: aRepository.

	^ MCVersion
		package: package
		info: info
		snapshot: package snapshot
		dependencies: deps