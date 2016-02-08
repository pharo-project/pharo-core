loadConfiguration: configurationName version: version
	[ Metacello new
		repository: self inboxRepositoryUrlString;
		configuration: configurationName;
		version: version;
		load ]
	on: MCMergeOrLoadWarning do: [ :w | w resume: true ]