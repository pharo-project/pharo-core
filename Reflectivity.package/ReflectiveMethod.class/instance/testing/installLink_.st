installLink: aMetaLink
	self increaseLinkCount.
	aMetaLink optionCompileOnLinkInstallation ifTrue: [ self compileAndInstallCompiledMethod ]
	