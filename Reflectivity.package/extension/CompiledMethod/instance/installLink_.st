installLink: aMetaLink
	self reflectiveMethod ifNil: [ self createTwin ].
	self reflectiveMethod increaseLinkCount.
	((self ast hasOption: #optionCompileOnLinkInstallation for: aMetaLink) or: [self isRealPrimitive]) "always precompile primitive methods"
		ifTrue: [ self reflectiveMethod compileAndInstallCompiledMethod ]
		ifFalse: [ self invalidate ].
	