setTitleAndEnsureInStash: aString
	self title: aString.
	self ensureStashPersistency.
	self save