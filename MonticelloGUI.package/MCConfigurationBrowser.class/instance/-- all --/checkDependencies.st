checkDependencies
	^self checkModified and: [self checkMissing]