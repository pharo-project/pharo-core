unplugFindReplace
	self announcer unsubscribe: RubFindReplaceService default.	
	RubFindReplaceService default announcer unsubscribe: self
