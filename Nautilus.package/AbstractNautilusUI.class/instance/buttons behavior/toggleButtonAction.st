toggleButtonAction

	self toggleButtonEnabled
		ifTrue: [ 
			self toggleShowPackages.
			self changed: #toggleButtonEnabled. ]