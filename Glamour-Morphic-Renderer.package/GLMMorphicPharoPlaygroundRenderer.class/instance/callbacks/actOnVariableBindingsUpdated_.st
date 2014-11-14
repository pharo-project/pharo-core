actOnVariableBindingsUpdated: ann 

	textModel variableBindings: nil.
	textModel appendVariableBinding: ann presentation variableBindings.
	textModel changed: #text. self flag: 'update just the style here'