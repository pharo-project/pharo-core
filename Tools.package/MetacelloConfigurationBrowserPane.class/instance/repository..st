accessing
repository: aRepositoryUrl
	repository := aRepositoryUrl.  
	
	self configurationList items: self configurations.
	self window ifNotNil: [:w | w title: aRepositoryUrl ]