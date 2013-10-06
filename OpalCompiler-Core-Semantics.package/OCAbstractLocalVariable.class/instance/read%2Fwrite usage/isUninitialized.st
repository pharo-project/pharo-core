isUninitialized
	usage ifNil: [ ^true ].
	self isArg ifTrue: [ ^false ].
	^self isRead