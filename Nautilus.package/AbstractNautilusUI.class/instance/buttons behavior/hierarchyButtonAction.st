hierarchyButtonAction

	self hierarchyButtonEnabled
		ifTrue: [ 
			self toggleShowPackages.
			self changed: #hierarchyButtonEnabled. ]