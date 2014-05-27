addRepository39ToAllPackages
	"self new removeAllRepositories: #('http://www.squeaksource.com/Sapphire/' 			'http://www.squeaksource.com/SapphireInbox/')"
	"self new addRepository39ToAllPackages"
	
	self allManagers do: [:each | 
		each repositoryGroup
			 addRepository: self repository39
			].
	
	