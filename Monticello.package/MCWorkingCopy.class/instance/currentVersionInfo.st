accessing
currentVersionInfo
	^ (self needsSaving or: [ancestry ancestors isEmpty])
		ifTrue: [self newVersion info]
		ifFalse: [ancestry ancestors first]