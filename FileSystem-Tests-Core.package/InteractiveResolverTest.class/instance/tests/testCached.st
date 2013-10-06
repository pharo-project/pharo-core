testCached
	[resolver resolve: #home]
		on: ResolutionRequest
		do: [:req | req resume: self home].
	self
		shouldnt: [self assertOriginResolves: #home]
		raise: ResolutionRequest