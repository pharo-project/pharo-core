private-parsing
parseMethod
	| methodNode | 
	methodNode := self parseMessagePattern.
	self parsePragmas.
	self addCommentsTo: methodNode.
	methodNode body: (self parseStatements: true).
	pragmas isNil
		ifFalse: [ methodNode pragmas: pragmas ].
	^methodNode