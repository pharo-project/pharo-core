visitMethodNode: aMethodNode
	
	scope := compilationContext scope newMethodScope. 
	aMethodNode scope: scope.  scope node: aMethodNode.
	aMethodNode arguments do: [:node | (self declareVariableNode: node) markArg].
	aMethodNode pragmas do: [:each | self visitNode: each].
	self analyseForLinks: aMethodNode.
	self visitNode: aMethodNode body.
	scope := scope outerScope.
