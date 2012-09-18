private-classes
lookupVariableNodeClass: aName
	| scope |
	
	currentVariableNodeClass notNil ifTrue: [ ^ currentVariableNodeClass ].
	scope := currentScope.
	[ scope isNil ]  whileFalse: [
		(scope hasTemporaryNamed: aName) ifTrue: [ ^ RBTemporaryNode ].
		(scope hasArgumentNamed: aName) ifTrue: [ ^ RBArgumentNode ].
		scope := scope scope.
	].
	
	^ RBVariableNode