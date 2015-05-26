loadConfiguration: configurationName version: version
	Gofer it 
		repository: self inboxRepositoryDefault;
		configurationOf: configurationName;
		loadVersion: version