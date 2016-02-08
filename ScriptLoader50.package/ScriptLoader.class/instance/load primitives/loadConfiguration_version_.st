loadConfiguration: configurationName version: version
	[ Metacello new
		repository: self inboxRepositoryUrlString;
		configuration: configurationName;
		version: version;
		load ]
	on: Warning do: [ :w | w resume: true ]