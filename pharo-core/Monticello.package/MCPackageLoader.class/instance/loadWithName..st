public
loadWithName: baseName
	self analyze.
	unloadableDefinitions isEmpty ifFalse: [self warnAboutDependencies].
	self useChangeSetNamed: baseName during: [self basicLoad]