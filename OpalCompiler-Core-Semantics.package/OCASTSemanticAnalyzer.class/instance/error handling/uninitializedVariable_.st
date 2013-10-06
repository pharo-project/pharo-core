uninitializedVariable: variableNode
	variableNode binding markRead.
	^ OCUninitializedVariableWarning new
		node: variableNode;
		compilationContext: compilationContext;
		signal