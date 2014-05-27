addRepositorySqueakTrunkToAllPackages
	"self new removeAllRepositories: #('http://www.squeaksource.com/Sapphire/' 			'http://www.squeaksource.com/SapphireInbox/')"
	"self new addRepositorySqueakTrunkToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repositorySqueakTrunk
			].
	
	