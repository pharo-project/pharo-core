pathFromMember: anArchiveMember
	| path |
	path := Path root resolve: anArchiveMember fileName.
	^ path basename isEmpty
		ifTrue: [ path parent ]
		ifFalse: [ path ]