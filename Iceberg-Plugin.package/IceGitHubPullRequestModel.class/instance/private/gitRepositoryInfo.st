gitRepositoryInfo
	^ gitRepositoryInfo ifNil: [ 
		gitRepositoryInfo := STON fromString: self requestGitRepositoryInfo ]