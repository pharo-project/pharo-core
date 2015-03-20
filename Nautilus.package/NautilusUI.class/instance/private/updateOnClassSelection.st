updateOnClassSelection
	| previousMethod |
	previousMethod := self methodWidget selectedMethods ifNotEmpty: [:c | c first ] ifEmpty: [nil].	
		"note that the model of nautilus is not consistent with the widget hence we cannot write selection: self selectedMethod"
		
	self changed: #hierarchyButtonEnabled.
	self setWindowTitle.
	self resetCategoriesListSelection.
	self resetMethodsListSelection.

	self updateCategoryAndMethodList: previousMethod.
	self changed: #isAClassSelected.
	self changed: #getComments.
	self changed: #instanceButtonLabel.
	self changed: #sourceCodeFrom: