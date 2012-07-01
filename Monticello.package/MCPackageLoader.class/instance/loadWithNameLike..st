public
loadWithNameLike: baseName
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useNewChangeSetNamedLike: baseName during: [self basicLoad]