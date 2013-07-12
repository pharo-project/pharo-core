accessing
repository: aRepositoryUrl
	repository := aRepositoryUrl.  
	
	self configurationList items: (self class retrieveConfigurationsFrom:  aRepositoryUrl).
	self window ifNotNil: [:w | w title: aRepositoryUrl ]