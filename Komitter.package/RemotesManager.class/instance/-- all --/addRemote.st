addRemote
	
	self newRemote ifNotNil: [ :repo | 
		MCRepositoryGroup default addRepository: repo.
		remotes roots: self buildRoots ]