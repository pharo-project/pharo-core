mc related utils
addRepositoryTreatedToAllPackages
	"self new addRepositoryTreatedToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repositoryTreated
			].
	
	