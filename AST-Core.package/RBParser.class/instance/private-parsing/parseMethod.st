parseMethod
	| methodNode | 
	methodNode := self parseMessagePattern.
	self flag: #todo. "currentScope inst var exists just for the case of FFI, where I need 
	 to keep track of the calling method in order to produce a correct FFI literal. I (Esteban)
	 adapted this taken it from the old RBExplicitVariableParser (now removed).
	 Please, do not remove until we have a real solution for FFI."
	currentScope := methodNode.
	self parsePragmas.
	self addCommentsTo: methodNode.
	
	methodNode body: self sequenceNodeClass new.
	(self parseStatements: false into: methodNode body).
	
	pragmas ifNotNil: [ methodNode pragmas: pragmas ].
	^methodNode