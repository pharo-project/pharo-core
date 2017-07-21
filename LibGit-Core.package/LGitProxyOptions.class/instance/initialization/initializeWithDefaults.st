initializeWithDefaults
	self withReturnHandlerDo: [
		self
			proxy_init_options: self getHandle getHandle
			version: LGitOptionsVersionsEnum git_fetch_options_version_1 ]