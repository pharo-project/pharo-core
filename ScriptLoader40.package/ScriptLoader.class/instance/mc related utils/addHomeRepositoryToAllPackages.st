addHomeRepositoryToAllPackages
	"self new addHomeRepositoryToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			addRepository: self repository;
			addRepository: self inboxRepository; 
			addRepository: self inboxRepository30].
		
	MCRepositoryGroup default
		addRepository: self repository;
		addRepository: self inboxRepository;
		addRepository: self inboxRepository30.