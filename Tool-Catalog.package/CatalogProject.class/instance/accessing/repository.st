repository
	^ self class repositoryNames 
		at: self repositoryUrl
		ifAbsent: [ self class unknownRepository ]