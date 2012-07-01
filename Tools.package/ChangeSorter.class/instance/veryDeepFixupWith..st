creation
veryDeepFixupWith: deepCopier

	super veryDeepFixupWith: deepCopier.
	parent := deepCopier references at: parent ifAbsent: [parent].
	self updateIfNecessary