variableValuePairsFor: anObject

	^ anObject gtInspectorVariableValuePairs asOrderedCollection 
		addFirst: 'self' -> anObject; 
		yourself