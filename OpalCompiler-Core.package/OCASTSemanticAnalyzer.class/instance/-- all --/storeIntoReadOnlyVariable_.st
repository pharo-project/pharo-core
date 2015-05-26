storeIntoReadOnlyVariable: variableNode

	^ OCStoreIntoReadOnlyVariableError new
		node: variableNode;
		compilationContext: compilationContext;
		messageText: 'Cannot store into';
		signal