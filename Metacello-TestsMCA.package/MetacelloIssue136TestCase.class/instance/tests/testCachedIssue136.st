testCachedIssue136

	self 
		shouldnt: [
			MetacelloPlatform current
				stackCacheFor: #issue136
				at: #testing
				doing: [:cache | self testIssue136 ]] 
		raise: MetacelloProjectSpecLoadError