repository: aRepositoryUrl
	"clear config cache for new repositories"
	repository = aRepositoryUrl ifFalse: [ configurations := nil ].	
	repository := aRepositoryUrl.  
	
	self configurationList items: self configurations.
	self window ifNotNil: [:w | w title: aRepositoryUrl ]