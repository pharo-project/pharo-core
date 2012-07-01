platform specific
isActiveDirectoryClass
	^ super isActiveDirectoryClass
		and: [Smalltalk maxFilenameLength isNil
				or: [Smalltalk maxFilenameLength asNumber <= 31]]