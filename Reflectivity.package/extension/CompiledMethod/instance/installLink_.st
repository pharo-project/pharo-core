installLink: aMetaLink
	self reflectiveMethod ifNil: [ self createTwin ].
	self reflectiveMethod increaseLinkCount.
	(aMetaLink optionCompileOnLinkInstallation or: [self isRealPrimitive]) "always precompile primitive methods"
		ifTrue: [ self reflectiveMethod compileAndInstallCompiledMethod ]
		ifFalse: [ self invalidate ].
	