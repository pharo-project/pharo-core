hierarchyButtonAction

	self hierarchyButtonEnabled
		ifTrue: [ 
			self toggleShowHierarchy.
			self changed: #hierarchyButtonEnabled. ]