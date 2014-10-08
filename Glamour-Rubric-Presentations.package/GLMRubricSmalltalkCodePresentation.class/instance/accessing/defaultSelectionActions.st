defaultSelectionActions

	^ self executionSelectionActions, 
		self codeEditingSelectionActions, 
		self browsingSelectionActions
	