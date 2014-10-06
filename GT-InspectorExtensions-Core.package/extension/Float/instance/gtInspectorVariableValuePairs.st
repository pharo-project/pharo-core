gtInspectorVariableValuePairs
	^ super gtInspectorVariableValuePairs
		add: '1' -> (self at: 1);
		add: '2' -> (self at: 2);
		yourself