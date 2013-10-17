currentVersionInfo
	^ (self needsSaving or: [ancestry ancestors isEmpty])
		ifTrue: [ (self newVersionIn: self repositoryGroup) info]
		ifFalse: [ancestry ancestors first]