currentVersionInfoWithMessage: aMessageString
	^ (self needsSaving or: [ancestry ancestors isEmpty])
		ifTrue: [(self newVersionWithMessage: aMessageString) info]
		ifFalse: [ancestry ancestors first]