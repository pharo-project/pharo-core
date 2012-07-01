mc related utils
addRepositoryMCToAllPackages
	"self new addRepositoryMCToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repositoryMC
			].
	
	