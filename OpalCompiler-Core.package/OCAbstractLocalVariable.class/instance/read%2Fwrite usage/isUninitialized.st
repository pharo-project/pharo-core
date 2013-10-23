isUninitialized
	usage ifNil: [ ^true ].
	self isArg ifTrue: [ ^false ]. "arguments are never unitialized"
	^self isRead