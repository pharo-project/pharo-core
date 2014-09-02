defaultAvailableRepositories
	"Return the default list of available repositories"
	
	^OrderedCollection 
		     with: self pharoDistributionRepository
	           with: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main' 	
		     with: 'http://ss3.gemtalksystems.com/ss/MetaRepoForPharo20' 	
		     with: 'http://www.squeaksource.com/MetacelloRepository'
			