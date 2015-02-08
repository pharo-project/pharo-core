defineRepositoryInMCBrowser
	"Define the currently shown meta repository as a repository browsable from within the MC Browser. This is is simpler to copy a configuration to the meta repositories."

	MCRepositoryGroup default 
		addRepository: (self repositoryObjectFromURLString: self repository)