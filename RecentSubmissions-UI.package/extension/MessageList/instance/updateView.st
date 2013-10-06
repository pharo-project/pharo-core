updateView
	
	self changed: #sortingSelector.
	self changed: #sortedMethodReferencesList.
	self changed: #dictionary.
	self triggerEvent: #changed.