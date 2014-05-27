addRepository310ToAllPackages
	"self new addRepository310ToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repository310
			].
	
	